package com.java.r2pgdm;

import java.sql.*;
import java.util.*;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;

import com.java.r2pgdm.graph.Edge;
import com.java.r2pgdm.graph.Node;
import com.java.r2pgdm.graph.Property;

/**
 * Contains functionality regarding the input database
 */
public class InputConnection {

    private static final String COLUMN_NAME = "COLUMN_NAME";
    private char _Quoting = '`';
    private static final String[] TYPES = new String[]{"TABLE"};
    private DatabaseMetaData _metaData;
    private String _schema, driver;

    // Connection conn;
    ConnectionPool connectionPool;

    Map<String, Object> progressMap = new HashMap<>();

    /**
     * Establishes a database connected to the input database.
     * 
     * @param connectionString  JDBC connection string
     * @param schema            name of database schema
     * @param driver            name of JDBC driver
     */
    public InputConnection(String connectionString, String schema, String driver) {
        this._schema = schema;
        this.driver = driver;
        if (!driver.equals("mysql")) {
            this._Quoting = '"';
        }
        connect(connectionString);
        try {
            retrieveMetaData();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    /**
     * Attempts to connect to the input database using the given connection string.
     * 
     * @param connectionString JDBC connection string
     */
    private void connect(String connectionString) {
        try {
            connectionPool = new ConnectionPool(driver, connectionString, 0, 64, true);
            Connection conn = connectionPool.getConnection();
            conn.setAutoCommit(false);
            System.out.println("Connection for input established.");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    /**
     * Retrieves the database's metadata
     * 
     * @throws SQLException if a database access error occurs
     */
    private void retrieveMetaData() throws SQLException {
        Connection conn = connectionPool.getConnection();
        try {
            _metaData = conn.getMetaData();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            connectionPool.free(conn);
        }
    }

    /**
     * Retrieves the table names of the table in the input database.
     * 
     * @return List of table names for nodes
     * @return List of table names for edges (join tables)
     */
    List<String> retrieveTableNames() {
        List<String> tables = new ArrayList<>();

        try {
            ResultSet rs = _metaData.getTables(_schema, _schema, "%", TYPES);
            while (rs.next()) {
                String name = rs.getString(3);
                String[] forbidden = {"node", "property", "edge", "node_c1", "node_c2", "edge_c1", "edge_c2", "property_c1", "property_c2"};
                if (!Arrays.asList(forbidden).contains(name)) {
                    tables.add(name);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return tables;
    }

    List<String> retrieveViewNames() {
        List<String> tables = new ArrayList<>();

        try {
            Connection conn = connectionPool.getConnection();
            String sql = "USE " + _schema + " SELECT TABLE_SCHEMA, TABLE_NAME FROM INFORMATION_SCHEMA.VIEWS";
            PreparedStatement stmt = conn.prepareStatement(sql, ResultSet.TYPE_FORWARD_ONLY,
                    ResultSet.CONCUR_READ_ONLY);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                String schema = rs.getString(1);
                String name = rs.getString(2);
                tables.add(schema + "." + name);
            }
            connectionPool.free(conn);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return tables;
    }

    /**
     * Calculates all composite foreign keys in the input database for the given table
     * 
     * @param tableName     Name of source table
     * @return              List of composite foreign keys
     */
    List<CompositeForeignKey> retrieveCompositeForeignKeys(String tableName) {
        List<CompositeForeignKey> Fks = new ArrayList<>();

        try {
            try (ResultSet foreignKeys = _metaData.getImportedKeys(_schema, null, tableName)) {
                while (foreignKeys.next()) {
                    boolean flag = false;
                    String st = foreignKeys.getString("FKTABLE_NAME");
                    String tt = foreignKeys.getString("PKTABLE_NAME");
                    String sa = foreignKeys.getString("FKCOLUMN_NAME");
                    String ta = foreignKeys.getString("PKCOLUMN_NAME");

                    int keySeq = Integer.parseInt(foreignKeys.getString("KEY_SEQ"));

                    ForeignKey tempFk = new ForeignKey(st, tt, sa, ta);

                    for (int i = 0; i < Fks.size() && !flag; i++) {
                        CompositeForeignKey currentFk = Fks.get(i);
                        if (keySeq > 1) {
                            currentFk.addForeignKey(tempFk);
                            flag = true;
                        }
                    }

                    if (!flag) {
                        CompositeForeignKey cfk = new CompositeForeignKey();
                        cfk.addForeignKey(tempFk);
                        Fks.add(cfk);
                    }
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return Fks;
    }

    /**
     * Finds the names of the columns of the given table.
     * 
     * @param tableName     Name of a table in the input connection
     * @return              List of column names
     */
    private List<String> getColumns(String tableName) {
        List<String> list = new ArrayList<>();

        try {
            ResultSet rs = _metaData.getColumns(_schema, null, tableName, null);
            while (rs.next()) {
                String col = rs.getString(COLUMN_NAME);
                list.add(col);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return list;
    }

    /**
     * Creates a node object for the given table name.
     * 
     * @param tableName     Name of table in the input database
     * @return              Uniquely identified node object
     */
    private Node createNode(String tableName) {
        String currIdentifier = Identifier.id(Optional.empty(), Optional.empty())
                .toString();
        return new Node(currIdentifier, tableName);
    }

    /**
     * Creates properties from one row from a table in the input database.
     * 
     * @param values            Points to current row in table processing
     * @param valuesMd          Metadata describing `values`
     * @param nodeIdentifier    Identifier of the node to which these properties belong
     * @return                  ArrayList of properties
     */
    private ArrayList<Property> createProperties(ResultSet values, ResultSetMetaData valuesMd, String nodeIdentifier) {
        return OutputConnection.createPropertyRow(values, valuesMd, nodeIdentifier);
    }

    /**
     * Creates all node an properties for one table in the input database.
     * 
     * @param tableName         Name of table in the input database
     */
    private int batchProcessNodes(ResultSet values, ResultSetMetaData valuesMd, String tabelName) throws SQLException {
        int count = 0;  // Current number of un-inserted nodes with properties

        ArrayList<Node> nodes = new ArrayList<>();
        ArrayList<Property> properties = new ArrayList<>();

        String tableName = tabelName;
        while (values.next()) {
            Node node = createNode(tableName);

            nodes.add(node);
            properties.addAll(createProperties(values, valuesMd, node.id));
            count++;
        }

        // Insert remaining nodes with properties
        if (!nodes.isEmpty() || !properties.isEmpty()) {
            OutputConnection.insertNodeRows(nodes);
            OutputConnection.insertPropertyRow(properties);
        }
        
        nodes.clear();
        properties.clear();

        return count;
    }

    /**
     * Creates all node an properties for one table in the input database.
     * 
     * @param tableName     Name of table in the input database
     */
    void createNodesAndProperties(String tableName) throws SQLException {
        Connection conn = connectionPool.getConnection();
        int row_count = getRowCount(conn, tableName);
    
        ExecutorService executorService = Executors.newCachedThreadPool();
        ArrayList<Future<Integer>> tFinished = new ArrayList<>();
    
        List<String> cols = getColumns(tableName);
        StringBuilder sqlSB = new StringBuilder("SELECT ");
    
        cols.forEach(c -> sqlSB.append(c).append(","));
    
        sqlSB.append(" ROW_NUMBER() OVER (ORDER BY (").append(cols.get(0)).append(")) AS rId FROM ");
        sqlSB.append(Character.toString(_Quoting)).append(tableName).append(Character.toString(_Quoting));
        sqlSB.append(" GROUP BY ");
    
        cols.forEach(c -> sqlSB.append(c).append(","));
    
        sqlSB.setLength(sqlSB.length() - 1);
        sqlSB.append(" LIMIT ? OFFSET ?;");
    
        String sql = sqlSB.toString();
    
        try {    
            int offset = 0;
            int batchSize = 100000;
            int totalNodes = 0;
    
            while (offset < row_count) {
                final int currentOffset = offset;
    
                Future<Integer> future = executorService.submit(() -> {
                    Connection connThread = connectionPool.getConnection();
                    PreparedStatement stmt = connThread.prepareStatement(sql, ResultSet.TYPE_FORWARD_ONLY, ResultSet.CONCUR_READ_ONLY);

                    // Set parameters for pagination
                    stmt.setInt(1, batchSize);
                    stmt.setInt(2, currentOffset);
    
                    // Retrieve the data
                    ResultSet values = stmt.executeQuery();
                    ResultSetMetaData valuesMd = values.getMetaData();
    
                    // Process the Nodes and Properties in the current batch
                    int rowCount = batchProcessNodes(values, valuesMd, tableName);
                    values.close();
                    connectionPool.free(connThread);
                    stmt.close();
                    return rowCount;
                });
    
                tFinished.add(future);
    
                // Update the parameters for pagination
                offset += batchSize;
            }
    
            // Wait for all threads to complete
            for (Future<Integer> future : tFinished) {
                try {
                    totalNodes += future.get();
                    // Report the progress in the console
                    progressMap.put(tableName, totalNodes);
                    reportProgress();
                } catch (InterruptedException | ExecutionException e) {
                    e.printStackTrace();
                }
            }

            progressMap.put(tableName, "Done");
            reportProgress();
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println(sql);
        } finally {
            // Make the connection available again in the connection pool
            connectionPool.free(conn);
        }
    
        // Shutdown the executor after all tasks are completed
        executorService.shutdown();
    }
    
    private int getRowCount(Connection conn, String tableName) throws SQLException {
        PreparedStatement rowStmt = conn.prepareStatement("SELECT COUNT(*) AS row_count FROM " + tableName);
        ResultSet rs = rowStmt.executeQuery();
        int row_count = 0;
        if (rs.next()) {
            row_count = rs.getInt("row_count");
        }
        return row_count;
    }

    /**
     * Prints progress for each table in the progress map.
     * <p>
     * This method iterates over the keys of the progress map, printing progress information for each table.
     * It checks the type of progress stored in the map and prints accordingly.
     * </p>
     * <p>
     * Progress can be either an integer representing the number of nodes processed for a table, or a string
     * indicating completion status.
     * </p>
     * <p>
     * If the method is called twice simultaneously, it handles the situation gracefully without interrupting the process.
     * </p>
     */
    private synchronized void reportProgress() {
   
        // Print progress for each table
        try {
            for (String tableName : progressMap.keySet()) {
                Object progressObj = progressMap.get(tableName);
                if (progressObj instanceof Integer) {
                    int progress = (int) progressObj;
                    System.out.println(tableName + ": " + progress + " nodes");
                } else if (progressObj instanceof String) {
                    String progressStr = (String) progressObj;
                    System.out.println(tableName + ": " + progressStr);
                }
            }
            System.out.println(); // Add a newline after printing progress for all tables
        } catch (Exception e) {
            // Handle exceptions
        }
    }
    
    

    /**
     * Query to find all tuples of values in the composite foreign key columns that exist in both source and target table.
     * 
     * @param cfk   Describes the relevant columns
     * @return      Partial query
     */
    private String joinableColumnsQuery(CompositeForeignKey cfk) {
        String sqlSel = "joinableColumns".concat(cfk.targetTable).concat(" as (SELECT DISTINCT ");
        String sqlWhe = " ON ";

        for (int i = 0; i < cfk.foreignKeys.size(); i++) {
            ForeignKey fk = cfk.foreignKeys.get(i);
            sqlSel = sqlSel.concat("sourceTable.").concat(fk.sourceAttribute).concat(",");
            sqlWhe = sqlWhe.concat("sourceTable.").concat(fk.sourceAttribute).concat(" = ").concat("targetTable.")
                    .concat(fk.targetAttribute).concat(" AND ");
        }

        sqlSel = sqlSel.substring(0, sqlSel.length() - 1);
        sqlWhe = sqlWhe.substring(0, sqlWhe.length() - 5);

        String sql = sqlSel.concat(" FROM ").concat(Character.toString(_Quoting)).concat(cfk.sourceTable)
                .concat(Character.toString(_Quoting)).concat(" AS sourceTable INNER JOIN ")
                .concat(Character.toString(_Quoting)).concat(cfk.targetTable).concat(Character.toString(_Quoting))
                .concat(" AS targetTable ").concat(sqlWhe).concat(")");

        return sql;
    }

    /**
     * Finds all source nodes with the properties described by `cfk`.
     * the returned table has three columns : id, pkey, pvalue (node id, name of key, value of key attribute)
     *
     * @param cfk   Describes the relevant columns
     * @return      Partial query
     */
    private String sourceNodeQuery(CompositeForeignKey cfk) {
        String sql = "sourceNodes" + cfk.targetTable + " as (SELECT n.id, p.pkey, p.pvalue FROM node n INNER JOIN property p on " +
                "n.id = p.id AND n.label = '" + cfk.sourceTable + "' AND (";

        for (int i = 0; i < cfk.foreignKeys.size(); i++) {
            ForeignKey fk = cfk.foreignKeys.get(i);
            if (i > 0) {
                sql = sql.concat(" OR ");
            }
            sql = sql.concat("p.pkey = '").concat(fk.sourceAttribute).concat("'");
        }
        sql = sql.concat(("))"));
        return sql;
    }

    /**
     * Finds all target nodes with the properties described by `cfk`
     * the returned table has three columns : id, pkey, pvalue (node id, name of key, value of key attribute)
     *
     * @param cfk   Describes the relevant columns
     * @return      Partial query
     */
    private String targetNodeQuery(CompositeForeignKey cfk) {
        String sql = "targetNodes" + cfk.targetTable + " as (SELECT n.id, p.pkey, p.pvalue FROM node n INNER JOIN property p on " +
                "n.id = p.id AND n.label = '" + cfk.targetTable + "' AND (";

        for (int i = 0; i < cfk.foreignKeys.size(); i++) {
            ForeignKey fk = cfk.foreignKeys.get(i);
            if (i > 0) {
                sql = sql.concat(" OR ");
            }
            sql = sql.concat("p.pkey = '").concat(fk.targetAttribute).concat("'");
        }
        sql = sql.concat(("))"));
        return sql;
    }

    /**
     * Pivots the source nodes such that each unique value of pkey becomes a column with pvalue as its value
     *
     * @param cfk   Describes the relevant columns
     * @return      Partial query
     */
    private String pivotedSourceNodeQuery(CompositeForeignKey cfk) {
        String sql = "pivotedSourceNodes" + cfk.targetTable + " as (SELECT id as sourceId";

        for (int i = 0; i < cfk.foreignKeys.size(); i++) {
            ForeignKey fk = cfk.foreignKeys.get(i);
            sql = sql.concat(", MAX(CASE WHEN pkey='")
                    .concat(fk.sourceAttribute)
                    .concat("' THEN pvalue END) ")
                    .concat(fk.sourceAttribute);
        }
        return sql.concat(" FROM sourceNodes" + cfk.targetTable + " s GROUP BY s.id)");
    }

    /**
     * Pivots the target nodes such that each unique value of pkey becomes a column with pvalue as its value
     *
     * @param cfk   Describes the relevant columns
     * @return      Partial query
     */
    private String pivotedTargetNodeQuery(CompositeForeignKey cfk) {
        String sql = "pivotedTargetNodes" + cfk.targetTable + " as (SELECT id as targetId";

        for (int i = 0; i < cfk.foreignKeys.size(); i++) {
            ForeignKey fk = cfk.foreignKeys.get(i);
            sql = sql.concat(", MAX(CASE WHEN pkey='")
                    .concat(fk.targetAttribute)
                    .concat("' THEN pvalue END) ")
                    .concat(fk.targetAttribute);
        }
        return sql.concat(" FROM targetNodes" + cfk.targetTable + " s GROUP BY s.id)");
    }

    /**
     * inner joins the pivoted source table with the joinable columns such that only joinable rows remain
     *
     * @param cfk   Describes the relevant columns
     * @return      Partial query
     */
    private String joinedSourceNodesQuery(CompositeForeignKey cfk) {
        String sql = "joinedSourceNodes" + cfk.targetTable + " as ( SELECT s.sourceId";

        for (int i = 0; i < cfk.foreignKeys.size(); i++) {
            ForeignKey fk = cfk.foreignKeys.get(i);
            sql = sql.concat(", s.").concat(fk.sourceAttribute);
        }
        sql = sql.concat(" FROM pivotedSourceNodes" + cfk.targetTable + " s INNER JOIN joinableColumns" + cfk.targetTable + " j ON ");
        for (int i = 0; i < cfk.foreignKeys.size(); i++) {
            ForeignKey fk = cfk.foreignKeys.get(i);
            if (i > 0) {
                sql = sql.concat(" AND ");
            }
            sql = sql.concat("s.")
                    .concat(fk.sourceAttribute)
                    .concat(" = j.")
                    .concat("j.")
                    .concat(fk.sourceAttribute);
        }
        return sql.concat(") ");
    }

    /**
     * Joins the joined source nodes with the target nodes, such that we have a list of source, target id pairs between
     * wich edges need to be created
     *
     * @param cfk   Describes the relevant columns
     * @return      Partial query
     */
    private String finalEdgeJoinString(CompositeForeignKey cfk) {
        String sql = "SELECT s.sourceId, t.targetId FROM joinedSourceNodes" + cfk.targetTable + " s LEFT JOIN pivotedTargetNodes" + cfk.targetTable + " t ON ";
        for (int i = 0; i < cfk.foreignKeys.size(); i++) {
            ForeignKey fk = cfk.foreignKeys.get(i);
            if (i > 0) {
                sql = sql.concat(" AND ");
            }
            sql = sql.concat("s.")
                    .concat(fk.sourceAttribute)
                    .concat(" = ")
                    .concat("t.")
                    .concat(fk.targetAttribute);
        }

        return sql;
    }

    /**
     * inserts all edges described by `cfk` into the input database
     *
     * @param cfk       Describes the relevant columns
     * @param tableName Table name
     */
    void insertEdges(CompositeForeignKey cfk, String tableName) {
        String sql = "";

        sql = sql.concat("WITH ")
                .concat(joinableColumnsQuery(cfk))
                .concat(", ")
                .concat(sourceNodeQuery(cfk))
                .concat(", ")
                .concat(targetNodeQuery(cfk))
                .concat(", ")
                .concat(pivotedSourceNodeQuery(cfk))
                .concat(", ")
                .concat(pivotedTargetNodeQuery(cfk))
                .concat(", ")
                .concat(joinedSourceNodesQuery(cfk))
                .concat(finalEdgeJoinString(cfk));

        try {
            Connection conn = connectionPool.getConnection();
            ResultSet rs = conn.createStatement().executeQuery(sql);

            ArrayList<Edge> edges = new ArrayList<>();
            int count = 0;
            int batchSize = 1000;
            // System.out.println("creating edges for table " + tableName);

            while (rs.next()) {
                Integer id = Identifier.id(
                        Optional.empty(), Optional.empty());
                String sNodeId = rs.getString("sourceId");
                String tNodeId = rs.getString("targetId");

                Edge e = new Edge(id.toString(), sNodeId, tNodeId, cfk.sourceTable.concat("-").concat(cfk.targetTable));
                edges.add(e);
                count++;

                if (edges.size() >= batchSize) {
                    OutputConnection.insertEdgeRows(edges);
                    // System.out.println("Added " + count + " Edges for table " + tableName);

                    edges.clear();
                }
            }

            if (!edges.isEmpty()) {
                OutputConnection.insertEdgeRows(edges);
                System.out.println("Added " + count + " Edges for table " + tableName);
            }

            edges.clear();
            rs.close();
            connectionPool.free(conn);
        } catch (SQLException e) {
            System.out.println(sql);
            e.printStackTrace();
        }
    }

    private String finalEdgeJoinStringTargets(String tableName, CompositeForeignKey cfk_1, CompositeForeignKey cfk_2) {
        String sql = "SELECT ".concat(tableName).concat(".*, ")
                                .concat(cfk_1.targetTable).concat(".targetId AS targetId_1, ")
                                .concat(cfk_2.targetTable).concat(".targetId AS targetId_2 ")
                                .concat("FROM ").concat(tableName).concat(" ")
                                .concat("JOIN pivotedTargetNodes").concat(cfk_1.targetTable).concat(" AS ").concat(cfk_1.targetTable).concat(" ON ").concat(tableName).concat(".").concat(cfk_1.foreignKeys.get(0).sourceAttribute.toString()).concat(" = ").concat(cfk_1.targetTable).concat(".").concat(cfk_1.foreignKeys.get(0).targetAttribute.toString()).concat(" ")
                                .concat("JOIN pivotedTargetNodes").concat(cfk_2.targetTable).concat(" AS ").concat(cfk_2.targetTable).concat(" ON ").concat(tableName).concat(".").concat(cfk_2.foreignKeys.get(0).sourceAttribute.toString()).concat(" = ").concat(cfk_2.targetTable).concat(".").concat(cfk_2.foreignKeys.get(0).targetAttribute.toString());
        return sql;
    }


    /**
     * Retrieves join table names along with their composite foreign keys.
     *
     * @param tableNames List of table names
     * @return A map where keys are join table names and values are lists of composite foreign keys
     */
    public Map<String, List<CompositeForeignKey>> retrieveJoinTableNames(List<String> tableNames) {
        Map<String, List<CompositeForeignKey>> joinTableNames = new HashMap<>();
        Map<String, Integer> tableMappingSource = new HashMap<>();
        Map<String, Integer> tableMappingTarget = new HashMap<>();
        for (String tableName : tableNames) {
            List<CompositeForeignKey> fks = retrieveCompositeForeignKeys(tableName);
        

            // Report the join table if it has exactly 2 composite foreign keys and is never the target of a different foreign key
            if (fks.size() == 2) {
                joinTableNames.put(tableName, fks);
            }

            for (CompositeForeignKey cfk : fks) {
                tableMappingSource.compute(cfk.sourceTable, (key, oldValue) -> ((oldValue == null) ? 1 : oldValue + 1));
                tableMappingTarget.compute(cfk.targetTable, (key, oldValue) -> ((oldValue == null) ? 1 : oldValue + 1));
            }
        }

        for (String tableNameToRemove : tableMappingTarget.keySet()){
            joinTableNames.remove(tableNameToRemove);
        }

        return joinTableNames;
    }

    void insertJoinEdges(CompositeForeignKey cfk_1, CompositeForeignKey cfk_2, String tableName) {
        String sql_1 = "";

        sql_1 = sql_1.concat("WITH ")
                .concat(joinableColumnsQuery(cfk_1))
                .concat(", ")
                .concat(joinableColumnsQuery(cfk_2))
                .concat(", ")
                .concat(targetNodeQuery(cfk_1))
                .concat(", ")
                .concat(targetNodeQuery(cfk_2))
                .concat(", ")
                .concat(pivotedTargetNodeQuery(cfk_1))
                .concat(", ")
                .concat(pivotedTargetNodeQuery(cfk_2))
                .concat(finalEdgeJoinStringTargets(tableName, cfk_1, cfk_2));

        try {
            Connection conn = connectionPool.getConnection();
            ResultSet rs_1 = conn.createStatement().executeQuery(sql_1);
            ResultSetMetaData rs_1Md = rs_1.getMetaData();


            ArrayList<Edge> edges = new ArrayList<>();
            ArrayList<Property> properties = new ArrayList<>();
            int count = 0;
            int batchSize = 1000;
            // System.out.println("creating edges for join table " + tableName);

            while (rs_1.next()) {
                Integer id = Identifier.id(
                        Optional.empty(), Optional.empty());
                String tNodeId_1 = rs_1.getString("targetId_1");
                String tNodeId_2 = rs_1.getString("targetId_2");

                Edge e = new Edge(id.toString(), tNodeId_1, tNodeId_2, tableName);


                properties.addAll(createProperties(rs_1, rs_1Md, id.toString()));
                edges.add(e);
                count++;

                if (edges.size() >= batchSize) {
                    OutputConnection.insertEdgeRows(edges);
                    OutputConnection.insertPropertyRow(properties);
                    // System.out.println("Added " + count + " Edges for table " + tableName);

                    edges.clear();
                    properties.clear();
                }
            }

            if (!edges.isEmpty()) {
                OutputConnection.insertEdgeRows(edges);
                System.out.println("Added " + count + " Edges for table " + tableName);
            }

            edges.clear();
            rs_1.close();
            connectionPool.free(conn);
        } catch (SQLException e) {
            System.out.println(sql_1);
            e.printStackTrace();
        }
    }

}
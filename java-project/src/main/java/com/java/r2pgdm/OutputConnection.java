package com.java.r2pgdm;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.java.r2pgdm.converter.SQLConverter;
import com.java.r2pgdm.converter.SQLConverterFactory;
import com.java.r2pgdm.graph.Edge;
import com.java.r2pgdm.graph.Node;
import com.java.r2pgdm.graph.Property;

/**
 * Contains functionality regarding output to the input database
 */
public class OutputConnection {

    private static Connection conn;
    private static ConnectionPool connectionPool;
    private static String driver;
    private static String _database;
    private static String _schema;

    /**
     * Since output is written to the input connection we reuse the input connection
     * 
     * @param input Connection to the input database
     */
    public OutputConnection(InputConnection input, String driver, String database, String schema) {
        try {
            conn = input.connectionPool.getConnection();
            connectionPool = input.connectionPool;
            OutputConnection.driver = driver;
            this._database =  database;
            this._schema = schema;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                createGraphSQL();
            } catch (Error e) {
                e.printStackTrace();
            } finally {
                connectionPool.free(conn);
            }
        }
    }

    /**
     * Drops tables generated in the input database while creating the mapping
     * between SQL and Neo4J
     */
    private void dropTablesIfExists() {
        System.out.println("Dropping old tables");
        try {
            Statement stmt = conn.createStatement();
            stmt.executeUpdate("DROP TABLE IF EXISTS node;");
            stmt.executeUpdate("DROP TABLE IF EXISTS edge;");
            stmt.executeUpdate("DROP TABLE IF EXISTS property;");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    /**
     * Initializes the input database to accept new output
     */
    private void createGraphSQL() {
        dropTablesIfExists();
        createNodeTable();
        createEdgeTable();
        createPropertyTable();
        System.out.println("Mapping - Created tables.");
    }

    /**
     * Creates a table in the input database that will store nodes
     */
    private void createNodeTable() {
        try {
            Statement stmt = conn.createStatement();
            if (driver.equals("com.microsoft.sqlserver.jdbc.SQLServerDriver") || driver.equals("mssql-jdbc")) {
                stmt.executeUpdate("CREATE TABLE node(id INTEGER NOT NULL, label VARCHAR(max), PRIMARY KEY (id));");
            } else {
                stmt.executeUpdate("CREATE TABLE node(id INTEGER NOT NULL, label TEXT, PRIMARY KEY (id));");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    /**
     * Creates a table in the input database that will store edges
     */
    private void createEdgeTable() {
        try {
            Statement stmt = conn.createStatement();
            stmt.executeUpdate(
                    "CREATE TABLE edge(id INTEGER NOT NULL, srcId INTEGER, tgtId INTEGER, label TEXT, PRIMARY KEY (id));");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    /**
     * Creates a table in the input database that will store node properties
     */
    private void createPropertyTable() {
        try {
            Statement stmt = conn.createStatement();
            stmt.executeUpdate(
                    "CREATE TABLE property(id INTEGER NOT NULL, pkey VARCHAR(256), pvalue TEXT, PRIMARY KEY (id, pkey));");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    /**
     * Transforms one database row to a list of properties belonging to the node
     * that represents said databasse row
     * 
     * @param values         ResultSet containing rows from one table in the input
     *                       database
     * @param valuesMd       ResultSetMetadata describing the structure `values`
     *                       parameter
     * @param nodeIdentifier Identifier that belongs to the node that describes this
     *                       database row.
     * @return ArrayList of unique properties belonging to the node that represents
     *         a database row
     */
    static ArrayList<Property> createPropertyRow(ResultSet values, ResultSetMetaData valuesMd, String nodeIdentifier) {
        ArrayList<Property> properties = new ArrayList<>();

        try {
            int length = valuesMd.getColumnCount(); // number of cells in a row

            // Create a property for each row cell
            for (int i = 1; i < length; i++) {
                String attributeName = valuesMd.getColumnName(i);
                Object attributeValue = values.getObject(i);

                // Cell might contain null, in which case we don't want to add a property to the
                // node
                if (attributeValue != null) {
                    properties.add(new Property(nodeIdentifier, attributeName,
                            attributeValue.toString().replaceAll("[, ' \"]", "").strip()));
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return properties;
    }

    static void createEdges(InputConnection inputConn, InputConnection outputconn, String t) {
        List<CompositeForeignKey> fks = inputConn.retrieveCompositeForeignKeys(t);

        if (fks.size() == 0) {
            System.out.println("No foreign keys found for table " + t);
            return;
        }

        fks.forEach(fk -> outputconn.insertEdges(fk, t));
    }

    static void createEdgesAndProperties(InputConnection inputConn, String k, List<CompositeForeignKey> v) {
        // There are two items in v, for which both target items need to be connected,
        // with the properties in the edge.

        inputConn.insertJoinEdges(v.get(0), v.get(1), k);
    }

    /**
     * Inserts a collection of edges into the input database
     * 
     * @param edges ArrayList of unique edges
     */
    static void insertEdgeRows(ArrayList<Edge> edges) {
        final int MAX_PARAMETERS = 2000;
        final int PARAMETERS_PER_ROW = 4;
        final int MAX_ROWS_PER_BATCH = MAX_PARAMETERS / PARAMETERS_PER_ROW;

        int totalEdges = edges.size();
        int start = 0;

        try {
            Connection conn = connectionPool.getConnection();

            while (start < totalEdges) {
                int end = Math.min(start + MAX_ROWS_PER_BATCH, totalEdges);

                // Initialize the insert query (edges has at least one edge)
                StringBuilder sql = new StringBuilder("INSERT INTO edge VALUES(?,?,?,?)");

                // Expand the input query depending on the number of edges to be inserted
                for (int i = start + 1; i < end; i++) {
                    sql.append(",(?,?,?,?)");
                }

                PreparedStatement statementEdges = conn.prepareStatement(sql.toString());

                // Replace the query variables by values
                for (int i = start; i < end; i++) {
                    Edge edge = edges.get(i);
                    statementEdges.setInt(4 * (i - start) + 1, Integer.parseInt(edge.id));
                    statementEdges.setInt(4 * (i - start) + 2, Integer.parseInt(edge.sourceId));
                    statementEdges.setInt(4 * (i - start) + 3, Integer.parseInt(edge.targetId));
                    statementEdges.setString(4 * (i - start) + 4, edge.label);
                }
                statementEdges.executeUpdate();
                statementEdges.close();

                start = end; // Move to the next batch
            }
            connectionPool.free(conn);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    /**
     * Inserts a collection of properties into the input database
     * 
     * @param properties ArrayList of unique properties
     */
    static void insertPropertyRow(ArrayList<Property> properties) {
        final int MAX_PARAMETERS = 2000;
        final int PARAMETERS_PER_ROW = 3;
        final int MAX_ROWS_PER_BATCH = MAX_PARAMETERS / PARAMETERS_PER_ROW;

        int totalProperties = properties.size();
        int start = 0;

        try {
            Connection conn = connectionPool.getConnection();

            while (start < totalProperties) {
                int end = Math.min(start + MAX_ROWS_PER_BATCH, totalProperties);

                // Initialize the insert query
                StringBuilder sql = new StringBuilder("INSERT INTO property VALUES(?,?,?)");

                // Expand the input query depending on the number of properties to be inserted
                for (int i = start + 1; i < end; i++) {
                    sql.append(",(?,?,?)");
                }

                PreparedStatement st = conn.prepareStatement(sql.toString());

                // Replace the query variables by values
                for (int i = start; i < end; i++) {
                    Property prop = properties.get(i);
                    st.setInt(3 * (i - start) + 1, Integer.parseInt(prop.id));
                    st.setString(3 * (i - start) + 2, prop.key);
                    st.setString(3 * (i - start) + 3, prop.value);
                }

                st.executeUpdate();
                st.close();

                start = end; // Move to the next batch
            }

            connectionPool.free(conn);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    /**
     * Inserts a collection of nodes into the input database
     * 
     * @param nodes ArrayList of unique nodes
     */
    static void insertNodeRows(ArrayList<Node> nodes) {
        final int MAX_PARAMETERS = 2000;
        final int PARAMETERS_PER_ROW = 2;
        final int MAX_ROWS_PER_BATCH = MAX_PARAMETERS / PARAMETERS_PER_ROW;

        int totalNodes = nodes.size();
        int start = 0;

        try {
            Connection conn = connectionPool.getConnection();

            while (start < totalNodes) {
                int end = Math.min(start + MAX_ROWS_PER_BATCH, totalNodes);

                // Initialize the insert query
                StringBuilder sql = new StringBuilder("INSERT INTO node VALUES(?,?)");

                // Expand the input query depending on the number of nodes to be inserted
                for (int i = start + 1; i < end; i++) {
                    sql.append(",(?,?)");
                }

                PreparedStatement st = conn.prepareStatement(sql.toString());

                // Replace the query variables by values
                for (int i = start; i < end; i++) {
                    Node n = nodes.get(i);
                    st.setInt(2 * (i - start) + 1, Integer.parseInt(n.id));
                    st.setString(2 * (i - start) + 2, n.label);
                }

                st.executeUpdate();
                st.close();

                start = end; // Move to the next batch
            }

            connectionPool.free(conn);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    /**
     * Calculates and prints some statistics about the generated output data
     */
    static void printStatistics() {
        String sql = "";
        if (driver.equals("com.microsoft.sqlserver.jdbc.SQLServerDriver") || driver.equals("mssql-jdbc")) {
            sql = "SELECT COUNT(*) as stats_edge FROM dbo.edge UNION SELECT COUNT(*) AS stats_nodes FROM dbo.node UNION SELECT COUNT(*) AS stats_prop FROM dbo.property;";
        } else {
            sql = "SELECT COUNT(*) as stats_edge FROM edge UNION SELECT COUNT(*) AS stats_nodes FROM node UNION SELECT COUNT(*) AS stats_prop FROM property;";
        }
        List<String> results = new ArrayList<>();

        try {
            conn = connectionPool.getConnection();
            Statement stmt = conn.createStatement();
            ResultSet values = stmt.executeQuery(sql);
            while (values.next()) {
                results.add(values.getString(1));
            }
        } catch (SQLException e) {
            System.out.println(sql);
            e.printStackTrace();
        } finally {
            if (results.size() > 0) {
                System.out.println("# Nodes: ".concat(results.get(1)));
            }

            if (results.size() > 1) {
                System.out.println("# Properties: ".concat(results.get(2)));
            }

            if (results.size() > 2) {
                System.out.println("# Edges: ".concat(results.get(0)));
            }
            connectionPool.free(conn);
        }
    }

    /**
     * @return Returns all generated nodes from the input database
     */
    static ResultSet retrieveNodeData() {
        String sql = "select * from node;";

        return getResultSet(sql);
    }

    /**
     * Executes an sql data retrieving query and returns the retrieved ResultSet
     * 
     * @param sql query to retrieve data from the input database
     * @return Resultset containing the data requested by the query `sql`
     */
    private static ResultSet getResultSet(String sql) {
        try {
            PreparedStatement stmt = conn.prepareStatement(sql, ResultSet.TYPE_FORWARD_ONLY,
                    ResultSet.CONCUR_READ_ONLY);
            stmt.setFetchSize(500);
            ResultSet values = stmt.executeQuery();
            return values;
        } catch (SQLException e) {
            System.out.println(sql);
            e.printStackTrace();
            return null;
        }
    }

    /**
     * @return Returns all generated properties from the input database
     */
    static ResultSet retrievePropertyData() {
        String sql = "select * from property;";

        return getResultSet(sql);
    }

    /**
     * @return Returns all generated edges from the input database
     */
    static ResultSet getEdgeData() {
        String sql = "select * from edge;";

        return getResultSet(sql);
    }

    private static String buildFetchSql(String tableName, String schema, String driver) {
        String fetchSql = "SELECT * FROM " + tableName + " LIMIT ? OFFSET ?;";
        if (isMssqlDriver(driver)) {
            fetchSql = "SELECT * FROM " + schema + "." + tableName
                    + " ORDER BY (SELECT NULL) OFFSET ? ROWS FETCH NEXT ? ROWS ONLY;";
        } else if (isMssqlDriver(driver)) {
            fetchSql = "SELECT * FROM " + tableName
                    + " ORDER BY (SELECT NULL) OFFSET ? ROWS FETCH NEXT ? ROWS ONLY;";
        }
        return fetchSql;
    }

    private static boolean isMssqlDriver(String driver) {
        return driver.equals("com.microsoft.sqlserver.jdbc.SQLServerDriver") || driver.equals("mssql-jdbc");
    }

    private static void setFetchStmtParameters(PreparedStatement stmt, int offset, int batchSize, String driver) throws SQLException {
        if (isMssqlDriver(driver)) {
            stmt.setInt(1, offset);
            stmt.setInt(2, batchSize);
        } else {
            stmt.setInt(1, batchSize);
            stmt.setInt(2, offset);
        }
    }

    private static String buildCreateTableSql(String tableName, ResultSetMetaData metaData, SQLConverter converter) throws SQLException {
        StringBuilder sqlCreate = new StringBuilder("CREATE TABLE " + tableName + " (");
        for (int i = 1; i <= metaData.getColumnCount(); i++) {
            String columnDefinition = converter.convertColumnDefinition(metaData, i);
            sqlCreate.append(columnDefinition);

            if (i < metaData.getColumnCount()) {
                sqlCreate.append(", ");
            }
        }
        sqlCreate.append(");");

        return converter.convertQuery(sqlCreate.toString());
    }


    private static void setInsertStmtParameters(PreparedStatement stmt, ResultSet values, ResultSetMetaData metaData, SQLConverter converter) throws SQLException {
        for (int i = 1; i <= metaData.getColumnCount(); i++) {
            converter.setPreparedStatementParameter(stmt, values, metaData, i);
        }
    }

    public static void copyTable(InputConnection inputConn, InputConnection outputConn, String t) {
        int totalEntries = 0;
        try {
            System.out.println("Copying table " + t);
            Connection conn_input = inputConn.connectionPool.getConnection();
            Connection conn_output = outputConn.connectionPool.getConnection();

            // Determine the schema and object name
            String tableName = t;
            if (t.contains(".")) {
                String[] parts = t.split("\\.");
                tableName = parts[1];
            }

            // Drop existing table or view
            // TODO: Check of dit goed gaat als het in dezelfde db is.
            conn_output.createStatement().executeUpdate("DROP TABLE IF EXISTS " + tableName + ";");

            // Fetch data from the input database
            PreparedStatement fetchStmt = conn_input.prepareStatement(buildFetchSql(tableName, _schema, driver));

            SQLConverter converter = SQLConverterFactory.getConverter(outputConn.dbType);

            int offset = 0;
            boolean moreData = true;
            int batchSize = 100000;

            while (moreData) {
                setFetchStmtParameters(fetchStmt, offset, batchSize, driver);
                ResultSet values = fetchStmt.executeQuery();
                ResultSetMetaData valuesMd = values.getMetaData();

                if (offset == 0) {
                    // Create table on first batch
                    String sqlCreate = buildCreateTableSql(tableName, valuesMd, converter);
                    
                    try {
                        conn_output.createStatement().executeUpdate(sqlCreate.toString());
                    } catch (SQLException e) {
                        System.out.println("Error copying table " + tableName);
                        System.out.println(sqlCreate.toString() + "\n");
                        e.printStackTrace();
                    }
                }

                // If the rs is empty, skip the insert
                if (!values.isBeforeFirst()) {
                    moreData = false;
                    break;
                }

                // Prepare insert statement
                StringBuilder insertSql = new StringBuilder("INSERT INTO " + tableName + " VALUES (");
                for (int i = 1; i <= valuesMd.getColumnCount(); i++) {
                    insertSql.append("?");
                    if (i < valuesMd.getColumnCount()) {
                        insertSql.append(", ");
                    }
                }
                insertSql.append(")");
                PreparedStatement insertStmt = conn_output.prepareStatement(insertSql.toString());

                int batchCount = 0;
                while (values.next()) {
                    setInsertStmtParameters(insertStmt, values, valuesMd, converter);
                    insertStmt.addBatch();
                    if (++batchCount % batchSize == 0) {
                        insertStmt.executeBatch();
                    }
                    totalEntries++;
                }
                insertStmt.executeBatch(); // Execute any remaining batches

                moreData = batchCount == batchSize;
                offset += batchSize;
                insertStmt.close();
            }

            outputConn.connectionPool.free(conn_output);
            inputConn.connectionPool.free(conn_input);
            System.out.println("Table " + t + ": " + totalEntries + " entries copied.");
        } catch (SQLException e) {
            System.out.println("Error copying table " + t);
            e.printStackTrace();
        }
    }

    public static void drop_tables_output(String t) {
        try {
            Statement stmt = connectionPool.getConnection().createStatement();
            stmt.executeUpdate("DROP TABLE IF EXISTS " + t + ";");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}

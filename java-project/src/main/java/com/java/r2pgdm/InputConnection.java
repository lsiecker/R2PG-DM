package com.java.r2pgdm;

import java.sql.*;
import java.util.*;

import com.java.r2pgdm.graph.Edge;
import com.java.r2pgdm.graph.Node;
import com.java.r2pgdm.graph.Property;
import org.apache.commons.lang3.tuple.ImmutablePair;
import org.apache.commons.lang3.tuple.Pair;

/**
 * Contains functionality regarding the input database
 */
public class InputConnection {

    private static final String COLUMN_NAME = "COLUMN_NAME";
    private char _Quoting = '`';
    private static final String[] TYPES = new String[]{"TABLE"};
    private DatabaseMetaData _metaData;
    private String _schema;

    Connection conn;

    /**
     * Establishes a database connected to the input database
     * @param connectionString JDBC connection string
     * @param schema name of database schema
     * @param driver name of JDBC driver
     */
    public InputConnection(String connectionString, String schema, String driver) {
        this._schema = schema;
        if (!driver.equals("mysql")) {
            this._Quoting = '"';
        }
        connect(connectionString);
        retrieveMetaData();
    }

    /**
     * Attempts to connect to the input database using the given connection string
     * @param connectionString JDBC connection string
     */
    private void connect(String connectionString) {
        try {
            conn = DriverManager.getConnection(connectionString);
            conn.setAutoCommit(false);
            System.out.println("Connection for input established.");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    /**
     * Retrieves the database's metadata
     */
    private void retrieveMetaData() {
        try {
            _metaData = conn.getMetaData();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    /**
     * Retrieves the table names of the table in the input database
     * @return List of table names
     */
    List<String> retrieveTableNames() {
        List<String> tables = new ArrayList<>();

        try {
            ResultSet rs = _metaData.getTables(_schema, null, "%", TYPES);
            while (rs.next()) {
                String name = rs.getString(3);
                String[] forbidden = {"node", "property", "edge"};
                if (!Arrays.asList(forbidden).contains(name)) {
                    tables.add(name);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return tables;
    }

    /**
     * Calculates all composite foreign keys in the input database for the given table
     * @param tableName name of source table
     * @return list of composite foreign keys
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
                            currentFk.AddForeignKey(tempFk);
                            flag = true;
                        }
                    }

                    if (!flag) {
                        CompositeForeignKey cfk = new CompositeForeignKey();
                        cfk.AddForeignKey(tempFk);
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
     * Finds the names of the columns of the given table
     * @param tableName name of a table in the input connection
     * @return List of column names
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
     * Creates a node object for the given table name
     * @param tableName name of table in the input database
     * @return Uniquely identified node object
     */
    private Pair<String, Node> createNode(String tableName) {
        String currIdentifier = Identifier.id(Optional.empty(), Optional.empty())
                .toString();
        Node n = new Node(currIdentifier, tableName);
        return new ImmutablePair<>(currIdentifier, n);
    }

    /**
     * Creates properties from one row from a table in the input database
     * @param values points to current row in table processing
     * @param valuesMd Metadata describing `values`
     * @param nodeIdentifier identifier of the node to which these properties belong
     * @return ArrayList of properties
     */
    private ArrayList<Property> createProperties(ResultSet values, ResultSetMetaData valuesMd, String nodeIdentifier) {
        return OutputConnection.createPropertyRow(values, valuesMd, nodeIdentifier);
    }


    /**
     * Creates all node an properties for one table in the input database
     * @param tableName name of table in the input database
     */
    void createNodesAndProperties(String tableName) {
        List<String> cols = getColumns(tableName);
        StringBuilder sqlSB = new StringBuilder("SELECT ");

        cols.stream().forEach(c -> {
            sqlSB.append(c).append(",");
        });

        sqlSB.append(" ROW_NUMBER() OVER (ORDER BY (".concat(cols.get(0)).concat(")) AS rId FROM "));
        sqlSB.append(Character.toString(_Quoting).concat(tableName).concat(Character.toString(_Quoting)));
        sqlSB.append(" GROUP BY ");

        cols.stream().forEach(c -> {
            sqlSB.append(c).append(",");
        });
        sqlSB.setLength(sqlSB.length() - 1);
        sqlSB.append(";");

        String sql = sqlSB.toString();
        try {
            PreparedStatement stmt = conn.prepareStatement(sql, ResultSet.TYPE_FORWARD_ONLY,
                    ResultSet.CONCUR_READ_ONLY);
            stmt.setFetchSize(500);
            ResultSet values = stmt.executeQuery();
            ResultSetMetaData valuesMd = values.getMetaData();

            int count = 0;  // Current number of un-inserted nodes with properties
            int batchSize = 1000; // Number of nodes with properties should be inserted in the database simultaneously

            ArrayList<Node> nodes = new ArrayList<>();
            ArrayList<Property> properties = new ArrayList<>();

            while (values.next()) {
                Pair<String, Node> node = createNode(tableName);

                if (node.getRight() != null) {
                    nodes.add(node.getRight());
                    properties.addAll(createProperties(values, valuesMd, node.getLeft()));

                    if (count >= batchSize && count % batchSize == 0) {
                        OutputConnection.insertNodeRows(nodes);
                        OutputConnection.insertPropertyRow(properties);
                        nodes.clear();
                        properties.clear();
                        System.out.println("Created " + count + " nodes with properties for table " + tableName);
                    }
                    count++;
                }
            }

            // Insert remaining nodes with properties
            if (!nodes.isEmpty() || !properties.isEmpty()) {
                OutputConnection.insertNodeRows(nodes);
                OutputConnection.insertPropertyRow(properties);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println(sql);
        }
    }

    /**
     * Query to find all tuples of values in the composite foreign key columns that exist in both source and target table
     * @param cfk Describes the relevant columns
     * @return partial query
     */
    private String joinableColumnsQuery(CompositeForeignKey cfk) {
        String sqlSel = "WITH joinableColumns as (SELECT DISTINCT ";
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
     * Finds all source nodes with the properties described by `cfk`
     *
     * the returned table has three columns : id, pkey, pvalue (node id, name of key, value of key attribute)
     *
     * @param cfk Describes the relevant columns
     * @return partial query
     */
    private String sourceNodeQuery(CompositeForeignKey cfk) {
        String sql = "sourceNodes as (SELECT n.id, p.pkey, p.pvalue FROM node n INNER JOIN property p on " +
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
     * @param cfk Describes the relevant columns
     * @return partial query
     */
    private String targetNodeQuery(CompositeForeignKey cfk) {
        String sql = "targetNodes as (SELECT n.id, p.pkey, p.pvalue FROM node n INNER JOIN property p on " +
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
     * @param cfk Describes the relevant columns
     * @return partial query
     */
    private String pivotedSourceNodeQuery(CompositeForeignKey cfk) {
        String sql = "pivotedSourceNodes as (SELECT id as sourceId";

        for (int i = 0; i < cfk.foreignKeys.size(); i++) {
            ForeignKey fk = cfk.foreignKeys.get(i);
            sql = sql.concat(", MAX(CASE WHEN pkey='")
                    .concat(fk.sourceAttribute)
                    .concat("' THEN pvalue END) ")
                    .concat(fk.sourceAttribute);
        }
        return sql.concat(" FROM sourceNodes s GROUP BY s.id)");
    }

    /**
     * Pivots the target nodes such that each unique value of pkey becomes a column with pvalue as its value
     *
     * @param cfk Describes the relevant columns
     * @return partial query
     */
    private String pivotedTargetNodeQuery(CompositeForeignKey cfk) {
        String sql = "pivotedTargetNodes as (SELECT id as targetId";

        for (int i = 0; i < cfk.foreignKeys.size(); i++) {
            ForeignKey fk = cfk.foreignKeys.get(i);
            sql = sql.concat(", MAX(CASE WHEN pkey='")
                    .concat(fk.targetAttribute)
                    .concat("' THEN pvalue END) ")
                    .concat(fk.targetAttribute);
        }
        return sql.concat(" FROM TargetNodes s GROUP BY s.id)");
    }

    /**
     * inner joins the pivoted source table with the joinable columns such that only joinable rows remain
     *
     * @param cfk Describes the relevant columns
     * @return partial query
     */
    private String joinedSourceNodesQuery(CompositeForeignKey cfk) {
        String sql = "joinedSourceNodes as ( SELECT s.sourceId";

        for (int i = 0; i < cfk.foreignKeys.size(); i++) {
            ForeignKey fk = cfk.foreignKeys.get(i);
            sql = sql.concat(", s.").concat(fk.sourceAttribute);
        }
        sql = sql.concat(" FROM pivotedSourceNodes s INNER JOIN joinableColumns j ON ");
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
        return sql.concat(")");
    }

    /**
     * Joins the joined source nodes with the target nodes, such that we have a list of source, target id pairs between
     * wich edges need to be created
     *
     * @param cfk Describes the relevant columns
     * @return partial query
     */
    private String finalEdgeJoinString(CompositeForeignKey cfk) {
        String sql = "SELECT s.sourceId, t.targetId FROM joinedSourceNodes s LEFT JOIN pivotedTargetNodes t ON ";
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
     * @param cfk Describes the relevant columns
     * @param tableName table name
     */
    void insertEdges(CompositeForeignKey cfk, String tableName) {
        String sql = "";

        sql = sql.concat(joinableColumnsQuery(cfk))
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
            ResultSet rs = conn.createStatement().executeQuery(sql);

            ArrayList<Edge> edges = new ArrayList<>();
            int count = 0;
            int batchSize = 1000;
            System.out.println("creating edges for table " + tableName);

            while (rs.next()) {
                Integer id = Identifier.id(
                        null, null);
                String sNodeId = rs.getString("sourceId");
                String tNodeId = rs.getString("targetId");

                Edge e = new Edge(id.toString(), sNodeId, tNodeId, cfk.sourceTable.concat("-").concat(cfk.targetTable));
                edges.add(e);
                count++;

                if (edges.size() >= batchSize) {
                    OutputConnection.insertEdgeRows(edges);
                    System.out.println("Added " + count + " Edges for table " + tableName);

                    edges.clear();
                }
            }

            if (!edges.isEmpty()) {
                OutputConnection.insertEdgeRows(edges);
            }
        } catch (SQLException e) {
            System.out.println(sql);
            e.printStackTrace();
        }
    }
}
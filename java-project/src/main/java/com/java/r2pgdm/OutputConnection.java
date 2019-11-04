package com.java.r2pgdm;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.java.r2pgdm.graph.Edge;
import com.java.r2pgdm.graph.Node;
import com.java.r2pgdm.graph.Property;

/**
 * Contains functionality regarding output to the input database
 */
public class OutputConnection {

    private static Connection conn;

    /**
     * Since output is written to the input connection we reuse the input connection
     * @param input Connection to the input database
     */
    public OutputConnection(InputConnection input) {
        conn = input.conn;
        createGraphSQL();
    }

    /**
     * Drops tables generated in the input database while creating the mapping between SQL and Neo4J
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
            stmt.executeUpdate("CREATE TABLE node(id INTEGER NOT NULL, label TEXT, PRIMARY KEY (id));");
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
     * Transforms one database row to a list of properties belonging to the node that represents said databasse row
     * @param values ResultSet containing rows from one table in the input database
     * @param valuesMd ResultSetMetadata describing the structure `values` parameter
     * @param nodeIdentifier Identifier that belongs to the node that describes this database row.
     * @return ArrayList of unique properties belonging to the node that represents a database row
     */
    static ArrayList<Property> createPropertyRow(ResultSet values, ResultSetMetaData valuesMd, String nodeIdentifier) {
        ArrayList<Property> properties = new ArrayList<>();

        try {
            int length = valuesMd.getColumnCount(); // number of cells in a row

            // Create a property for each row cell
            for (int i = 1; i < length; i++) {
                String attributeName = valuesMd.getColumnName(i);
                Object attributeValue = values.getObject(i);

                // Cell might contain null, in which case we don't want to add a property to the node
                if (attributeValue != null) {
                    properties.add(new Property(nodeIdentifier, attributeName, attributeValue.toString()));
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return properties;
    }

    static void createEdges(InputConnection inputConn, String t) {
        List<CompositeForeignKey> fks = inputConn.retrieveCompositeForeignKeys(t);
        System.out.println(fks.size() + " fks where found in table " + t);
        fks.forEach(fk -> inputConn.insertEdges(fk, t));
    }

    /**
     * Inserts a collection of edges into the input database
     * @param edges ArrayList of unique edges
     */
    static void insertEdgeRows(ArrayList<Edge> edges) {
        if (edges.size()  > 0) {
            // Initialize the insert query (edges has at least one edge)
            StringBuilder sql = new StringBuilder("INSERT INTO edge VALUES(?,?,?,?)");

            // Expand the input query depending on the number of edges to be inserted
            for (int i = 1; i < edges.size(); i++) {
                sql.append(",(?,?,?,?)");
            }

            try {
                PreparedStatement statementEdges = OutputConnection.conn.prepareStatement(sql.toString());

                // Replace the query variables by values
                for (int i = 0; i < edges.size(); i++) {
                    Edge edge = edges.get(i);
                    statementEdges.setInt(4 * i + 1, Integer.parseInt(edge.id));
                    statementEdges.setInt(4 * i + 2, Integer.parseInt(edge.sourceId));
                    statementEdges.setInt(4 * i + 3, Integer.parseInt(edge.targetId));
                    statementEdges.setString(4 * i + 4, edge.label);
                }

                statementEdges.executeUpdate();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    /**
     * Inserts a collection of properties into the input database
     * @param properties ArrayList of unique properties
     */
    static void insertPropertyRow(ArrayList<Property> properties) {
        if (properties.size() > 0) {
            // Initialize the insert query (properties has at least one property)
            StringBuilder sql = new StringBuilder("INSERT INTO property VALUES(?,?,?)");

            // Expand the input query depending on the number of properties to be inserted
            for (int i = 1; i < properties.size(); i++) {
                sql.append(",(?,?,?)");
            }

            try {
                PreparedStatement st = conn.prepareStatement(sql.toString());

                // Replace the query variables by values
                for (int i = 0; i < properties.size(); i++) {
                    Property prop = properties.get(i);
                    st.setInt(3 * i + 1, Integer.parseInt(prop.id));
                    st.setString(3 * i + 2, prop.key);
                    st.setString(3 * i + 3, prop.value);
                }

                st.executeUpdate();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    /**
     * Inserts a collection of nodes into the input database
     * @param nodes ArrayList of unique nodes
     */
    static void insertNodeRows(ArrayList<Node> nodes) {
        if (nodes.size() > 0) {
            // Initialize the insert query (nodes has at least one node)
            StringBuilder sql = new StringBuilder("INSERT INTO node VALUES(?,?)");

            // Expand the input query depending on the number of nodes to be inserted
            for (int i = 1; i < nodes.size(); i++) {
                sql.append(",(?,?)");
            }

            try {
                PreparedStatement st = conn.prepareStatement(sql.toString());

                // Replace the query variables by values
                for (int i = 0; i < nodes.size(); i++) {
                    Node n = nodes.get(i);
                    st.setInt(2 * i + 1, Integer.parseInt(n.id));
                    st.setString(2 * i + 2, n.label);
                }

                st.executeUpdate();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    /**
     * Calculates and prints some statistics about the generated output data
     */
    static void printStatistics() {
        String sql = "SELECT COUNT(*) as stats FROM node UNION SELECT COUNT(*) FROM property UNION SELECT COUNT(*) FROM edge;";
        List<String> results = new ArrayList<>();

        try {
            Statement stmt = conn.createStatement();
            ResultSet values = stmt.executeQuery(sql);
            while (values.next()) {
                results.add(values.getString(1));
            }
        } catch (SQLException e) {
            System.out.println(sql);
            e.printStackTrace();
        } finally {
            System.out.println("# Nodes: ".concat(results.get(0)));
            System.out.println("# Properties: ".concat(results.get(1)));
            System.out.println("# Edges: ".concat(results.get(2)));
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
}

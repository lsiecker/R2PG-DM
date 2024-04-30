package com.java.r2pgdm;

import java.io.FileWriter;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.HashSet;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;

import com.opencsv.CSVWriter;

/**
 * Exports data to file
 */
class Export {

    /**
     * Exports generated graph data to csv files
     */
    static void generateCSVs(String path) {
        generateCSV(OutputConnection.retrieveNodeData(), path.concat("\\nodes.csv"),
                new String[] { "nodeid", "label" });
        generateCSV(OutputConnection.retrievePropertyData(), path.concat("\\properties.csv"),
                new String[] { "propid", "key", "value" });
        generateCSV(OutputConnection.getEdgeData(), path.concat("\\edges.csv"),
                new String[] { "edgeid", "srcid", "tgtid", "label" });
    }

    /**
     * Exports a single table to csv
     */
    private static void generateCSV(ResultSet res, String csv, String[] headers) {
        try {
            CSVWriter writer = new CSVWriter(new FileWriter(csv), CSVWriter.DEFAULT_SEPARATOR,
                    CSVWriter.NO_QUOTE_CHARACTER,
                    CSVWriter.DEFAULT_ESCAPE_CHARACTER, CSVWriter.DEFAULT_LINE_END);
            writer.writeNext(headers);
            writer.writeAll(res, false);
            writer.close();
        } catch (SQLException | IOException e) {
            e.printStackTrace();
        }
    }

    /**
     * Generate combined JSON and N-Triples for nodes and edges with properties
     */

    static ExecutorService executor = Executors.newFixedThreadPool(Runtime.getRuntime().availableProcessors());
    static InputConnection outputConn;

    static void generateCombinedGraph(String path, InputConnection conn) {
        outputConn = conn;
        String nTriplesFilePath = path.concat("\\combined.nt");
        try (FileWriter nTriplesWriter = new FileWriter(nTriplesFilePath)) {
            // Handle nodes and edges in parallel
            executor.execute(() -> processEntities("nodes", nTriplesWriter));
            executor.execute(() -> processEntities("edges", nTriplesWriter));

            executor.shutdown();
            executor.awaitTermination(Long.MAX_VALUE, TimeUnit.NANOSECONDS);
        } catch (IOException | InterruptedException e) {
            e.printStackTrace();
        }
    }

    static void processEntities(String type, FileWriter writer) {
        try (Connection conn = outputConn.connectionPool.getConnection();
             Statement stmt = conn.createStatement();
             ResultSet entities = (type.equals("nodes")) ? stmt.executeQuery("SELECT * FROM node")
                                                         : stmt.executeQuery("SELECT * FROM edge")) {
    
            while (entities.next()) {
                String entityId = entities.getString("id");
                if (type.equals("nodes")) {
                    writeEntity(entities, writer, entityId, conn);
                } else {
                    writeRelationship(entities, writer, entityId, conn);
                }
            }
        } catch (SQLException | IOException e) {
            e.printStackTrace();
        }
    }
    

    static void writeEntity(ResultSet entity, FileWriter writer, String entityId, Connection conn) throws SQLException, IOException {
        String label = escapeNTriples(entity.getString("label"));
        synchronized (writer) {
            // Writing node
            writer.write(String.format("<http://example.com/node/%s> <http://www.w3.org/1999/02/22-rdf-syntax-ns#type> <http://example.com/%s> .\n",
                    entityId, label));
        }
        processProperties(entityId, writer, "node", conn);
    }
    

    // This set will track which edge IDs have been processed
    static HashSet<String> processedEdges = new HashSet<>();

    static void writeRelationship(ResultSet relationship, FileWriter writer, String relId, Connection conn) throws SQLException, IOException {
        if (!processedEdges.contains(relId)) {
            processedEdges.add(relId);  // Add the edge ID to the set to mark it as processed

            String startId = relationship.getString("srcid");
            String endId = relationship.getString("tgtid");
            String label = escapeNTriples(relationship.getString("label"));

            synchronized (writer) {
                // Writing relationship
                writer.write(String.format("<http://example.com/node/%s> <http://example.com/edge/%s> '%s' <http://example.com/node/%s> .\n",
                        startId, label, relId, endId));
                // writer.write(String.format("<http://example.com/edge/%s> <http://www.w3.org/1999/02/22-rdf-syntax-ns#type> <http://example.com/%s> .\n",
                        // label, relId, label));
            }

            // Process properties only once per edge
            processProperties(relId, writer, "edge", conn);
        }
    }
    
    static void processProperties(String entityId, FileWriter writer, String type, Connection conn)
            throws SQLException, IOException {
        try (Statement stmt = conn.createStatement();
                ResultSet properties = stmt.executeQuery("SELECT * FROM property WHERE id = '" + entityId + "'")) {
            while (properties.next()) {
                String propertyKey = properties.getString("pkey");
                String propertyValue = escapeNTriples(properties.getString("pvalue"));
                synchronized (writer) {
                    writer.write(String.format("<http://example.com/%s/%s> <http://example.com/%s> \"%s\" .\n",
                            type, entityId, propertyKey, propertyValue));
                }
            }
        }
    }

    private static String escapeNTriples(String value) {
        if (value == null)
            return "";
        return value.replace("\\", "\\\\").replace("\"", "\\\"").replace("\n", "\\n");
    }

}

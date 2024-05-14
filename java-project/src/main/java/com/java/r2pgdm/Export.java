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

import com.fasterxml.jackson.core.JsonFactory;
import com.fasterxml.jackson.core.JsonGenerator;

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

    static ExecutorService executor = Executors.newFixedThreadPool(Runtime.getRuntime().availableProcessors());
    static InputConnection outputConn;

    /**
     * Generate JSON for nodes and edges with properties
     */
    static void generateJSONGraph(String path, InputConnection conn) {
        outputConn = conn;
        String jsonFilePath = path.concat("\\combined.json");
        JsonFactory jsonFactory = new JsonFactory();

        try (FileWriter fileWriter = new FileWriter(jsonFilePath);
                JsonGenerator jg = jsonFactory.createGenerator(fileWriter)) {
            processEntities("nodes", jg);
            processEntities("edges", jg);

        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            executor.shutdown();
            try {
                executor.awaitTermination(Long.MAX_VALUE, TimeUnit.NANOSECONDS);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
    }

    static void processEntities(String type, JsonGenerator jg) {
        try (Connection conn = outputConn.connectionPool.getConnection();
                Statement stmt = conn.createStatement();
                ResultSet entities = (type.equals("nodes")) ? stmt.executeQuery("SELECT * FROM node")
                        : stmt.executeQuery("SELECT * FROM edge")) {

            while (entities.next()) {
                if (type.equals("nodes")) {
                    writeEntity(entities, jg, entities.getString("id"), conn);
                } else {
                    writeRelationship(entities, jg, entities.getString("id"), conn);
                }
            }
        } catch (SQLException | IOException e) {
            e.printStackTrace();
        }
    }

    static void writeEntity(ResultSet entity, JsonGenerator jg, String entityId, Connection conn)
            throws SQLException, IOException {
        jg.writeStartObject();
        jg.writeStringField("type", "node");
        jg.writeStringField("id", entityId);
        jg.writeArrayFieldStart("labels");
        jg.writeString(entity.getString("label"));
        jg.writeEndArray();
        jg.writeFieldName("properties");
        jg.writeStartObject();
        processProperties(entityId, jg, "node", conn);
        jg.writeEndObject();
        jg.writeEndObject();
        jg.writeRaw("\n");
        jg.flush();
    }

    static void writeRelationship(ResultSet relationship, JsonGenerator jg, String relId, Connection conn)
            throws SQLException, IOException {
        jg.writeStartObject();
        jg.writeStringField("type", "relationship");
        jg.writeStringField("id", relId);

        // Writing the 'start' node information
        jg.writeObjectFieldStart("start");
        jg.writeStringField("id", relationship.getString("srcid"));
        jg.writeArrayFieldStart("labels");
        // Here you would add labels if they are available for the source node
        jg.writeEndArray();
        jg.writeEndObject();

        // Writing the 'end' node information
        jg.writeObjectFieldStart("end");
        jg.writeStringField("id", relationship.getString("tgtid"));
        jg.writeArrayFieldStart("labels");
        // Here you would add labels if they are available for the target node
        jg.writeEndArray();
        jg.writeEndObject();

        // Relationship label
        jg.writeStringField("label", relationship.getString("label"));

        // Writing properties associated with the relationship
        jg.writeFieldName("properties");
        jg.writeStartObject();
        processProperties(relId, jg, "edge", conn);
        jg.writeEndObject();

        jg.writeEndObject();
        jg.writeRaw('\n'); 
        jg.flush();
    }

    static void processProperties(String entityId, JsonGenerator jg, String type, Connection conn)
            throws SQLException, IOException {
        try (Statement stmt = conn.createStatement();
                ResultSet properties = stmt.executeQuery("SELECT * FROM property WHERE id = '" + entityId + "'")) {
            while (properties.next()) {
                jg.writeStringField(properties.getString("pkey"), properties.getString("pvalue"));
            }
        }
    }
}

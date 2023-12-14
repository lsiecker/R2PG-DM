package com.java.r2pgdm;

import java.io.FileWriter;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.opencsv.CSVWriter;

/**
 * Exports data to file
 */
class Export {

    /**
     * Exports generated graph data to csv files
     */
    static void generateCSVs(String path) {
        generateCSV(OutputConnection.retrieveNodeData(), path.concat("\\nodes.csv"), new String[] { "nodeid", "label" });
        generateCSV(OutputConnection.retrievePropertyData(), path.concat("\\properties.csv"), new String[] { "propid", "key", "value" });
        generateCSV(OutputConnection.getEdgeData(), path.concat("\\edges.csv"), new String[] { "edgeid", "srcid", "tgtid", "label" });
    }

    /**
     * Exports a single table to csv
     */
    private static void generateCSV(ResultSet res, String csv, String[] headers) {
        try {
            CSVWriter writer = new CSVWriter(new FileWriter(csv), CSVWriter.DEFAULT_SEPARATOR, CSVWriter.NO_QUOTE_CHARACTER,
                    CSVWriter.DEFAULT_ESCAPE_CHARACTER, CSVWriter.DEFAULT_LINE_END);
            writer.writeNext(headers);
            writer.writeAll(res, false);
            writer.close();
        } catch (SQLException | IOException e) {
            e.printStackTrace();
        }
    }
}

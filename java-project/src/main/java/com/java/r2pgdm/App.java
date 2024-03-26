package com.java.r2pgdm;

import java.io.File;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;

import org.ini4j.Wini;
import org.ini4j.Profile.Section;

/**
 * Main application class for R2PG-DM (Relational Database to Property Graph Direct Mapping).
 * This main class orchestrates the process of mapping the data from relational to graph database.
 */
public class App {
    public static PreparedStatement _statementEdges;
    public static InputConnection inputConn;

    /**
     * Main method to start the data migration process.
     * 
     * @param args Command-line arguments (not used)
     */
    public static void main(String[] args) {
        // Shutdown hook to close database connections when the application is exits.
        Runtime.getRuntime().addShutdownHook(new Thread() {
            public void run() {
                inputConn.connectionPool.closeAllConnections();
            }
        });

        try {
            Long start = System.currentTimeMillis();
            // Read the configuration from the .ini file.
            Wini ini = new Wini(new File("configs/sqlite/chinook.ini"));
            Config input = GetConfiguration(ini.get("input"));

            // Establish the database connection pool
            inputConn = new InputConnection(input.connectionString, input.database, input.driver);
            new OutputConnection(inputConn);

            // Retrieve the table names from the input database
            List<String> tables = inputConn.retrieveTableNames();
            Map<String, List<CompositeForeignKey>> joinTables = inputConn.retrieveJoinTableNames(tables);
            tables.removeAll(joinTables.keySet());

            // Transform tables in parallel
            ExecutorService executorService = Executors.newCachedThreadPool();
            ArrayList<Future<?>> tFinished = new ArrayList<>();

            // Create nodes and their properties
            tables.forEach(t -> tFinished.add(executorService.submit(() -> {
                try {
                    inputConn.createNodesAndProperties(t);
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            })));
            awaitTableCompletion(tFinished); // Wait for nodes and properties to finish creating
            System.out.println("Nodes with properties created");

            // Create edges without properties
            tables.forEach(t -> tFinished.add(executorService.submit(() -> OutputConnection.createEdges(inputConn, t))));
            awaitTableCompletion(tFinished); // Wait for edges to finish creating
            System.out.println("Edges created");

            // Create edges with properties
            joinTables.forEach((k,v) -> tFinished.add(executorService.submit(()-> OutputConnection.createEdgesAndProperties(inputConn, k, v))));
            awaitTableCompletion(tFinished);
            System.out.println("Edges with properties created");

            // Print the statistics
            OutputConnection.printStatistics();
            Long end = System.currentTimeMillis();
            System.out.println("Finished mapping in " + (end-start)/60000d + " minutes.");

            // Generate CSV files
            System.out.println("Creating CSV files for Nodes, Properties and Edges");
            Export.generateCSVs("exports");
            System.out.println("CSV files generated");

        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            // Clean up database connection
            inputConn.connectionPool.closeAllConnections();
        }
    }

    /**
     * Waits for all threads in `threads` to complete.
     * 
     * @param threads ArrayList containing Futures (We don't care about the return type)
     */
    private static void awaitTableCompletion(ArrayList<Future<?>> threads) {
        for (Future<?> thread : threads) {
            try {
                thread.get();
            } catch (InterruptedException | ExecutionException e) {
                e.printStackTrace();
            }
        };
        threads.clear();
    }

    /**
     * Reads a section from the configuration file (config.ini).
     * 
     * @param section Section to retrieve from the configuration file
     * @return Program configuration
     */
    private static Config GetConfiguration(Section section) {
        if (section.getName().equals("input")) {
            return new Config(section.get("connectionString"), section.get("driver"), section.get("database"));
        }
        return new Config(section.get("connectionString"));
    }
}

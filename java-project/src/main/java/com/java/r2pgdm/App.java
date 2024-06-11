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
import java.util.concurrent.TimeUnit;

import org.ini4j.Wini;
import org.ini4j.Profile.Section;

/**
 * Main application class for R2PG-DM (Relational Database to Property Graph
 * Direct Mapping). This main class orchestrates the process of mapping the 
 * data from relational to graph database.
 */
public class App {
    public static PreparedStatement _statementEdges;
    public static InputConnection inputConn, outputConn;

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
                outputConn.connectionPool.closeAllConnections();
            }
        });

        try {
            // Start the timer to keep track of the duration of the mapping process.
            Long start = System.currentTimeMillis();

            // Read the configuration from the .ini file.
            Wini ini = new Wini(new File("configs/mssql/world.ini"));
            Config input = GetConfiguration(ini.get("input"));
            Config output = GetConfiguration(ini.get("output"));
            Config mapping = GetConfiguration(ini.get("mapping"));

            // Create and test the connection pool for the input and output databases.
            inputConn = new InputConnection(input.connectionString, input.database, input.driver, mapping.schema);
            outputConn = new InputConnection(output.connectionString, output.database, output.driver, null);

            // Create the output connection object.
            new OutputConnection(outputConn, input.driver, output.database, mapping.schema);

            List<String> tables = new ArrayList<>();

            // If tables should be included in the mapping, retrieve the table names from the input database.
            if (mapping.tables) {
                tables.addAll(inputConn.retrieveTableNames());
            }

            // If views should be included in the mapping, retrieve the view names from the input database.
            if (mapping.views) {
                tables.addAll(inputConn.retrieveViewNames());
            }

            // If no tables or views are found, exit the program.
            if (tables.isEmpty()) {
                System.out.println("No tables or views found in the database.");
                return;
            }

            // Filter only the tables that are in mapping.tableNames.
            if (mapping.tableNames.length > 0) {
                // If the first element is "*", then we don't need to filter the tables.
                if (!("*".equals(mapping.tableNames[0]))) {
                    tables.retainAll(List.of(mapping.tableNames));
                }
            }

            // Create a copy of the tables list to keep track of all tables.
            List<String> all_tables = new ArrayList<>(tables);

            // Retrieve the join tables from the input database and remove them from the tables list.
            Map<String, List<CompositeForeignKey>> joinTables = inputConn.retrieveJoinTableNames(tables);
            tables.removeAll(joinTables.keySet());

            // Create executor service to run the threads
            ExecutorService executorService = Executors.newCachedThreadPool();
            ArrayList<Future<?>> tFinished = new ArrayList<>();

            // If the input and output databases are the same, then we don't need to copy
            // the tables.
            Boolean noCopy = Boolean.valueOf(
                    input.connectionString.equals(output.connectionString) && input.database.equals(output.database));
            if (noCopy) {
                System.out.println("Input and output databases are the same. Skipping table copying.");
            }

            // Copy the necessary tables from the input to the output database
            if (!noCopy) {
                System.out.println("Copying - Tables: " + all_tables);
                all_tables.forEach(t -> tFinished
                        .add(executorService.submit(() -> OutputConnection.copyTable(inputConn, outputConn, t))));
                awaitTableCompletion(tFinished);
            }

            // Create nodes and their properties
            System.out.println("\nMapping - Creating nodes with properties for tables: " + tables);
            tables.forEach(t -> tFinished.add(executorService.submit(() -> {
                try {
                    inputConn.createNodesAndProperties(t);
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            })));
            awaitTableCompletion(tFinished); // Wait for nodes and properties to finish creating
            System.out.println("Mapping - Nodes with properties created");

            // Create edges without properties
            System.out.println("Mapping - Creating edges without properties");
            tables.forEach(t -> tFinished
                    .add(executorService.submit(() -> OutputConnection.createEdges(inputConn, outputConn, t))));
            awaitTableCompletion(tFinished); // Wait for edges to finish creating
            System.out.println("Mapping - Edges created");

            // Create edges with properties
            System.out.println("Mapping - Creating edges without properties for tables: " + joinTables.keySet());
            joinTables.forEach((k, v) -> tFinished
                    .add(executorService.submit(() -> OutputConnection.createEdgesAndProperties(outputConn, k, v))));
            awaitTableCompletion(tFinished);
            System.out.println("Mapping - Edges with properties created");

            // Drop the tables from the output database if they were copied
            if (!noCopy) {
                all_tables.forEach(
                        t -> tFinished.add(executorService.submit(() -> OutputConnection.drop_tables_output(t))));
                awaitTableCompletion(tFinished);
            }

            // Print the statistics
            OutputConnection.printStatistics();

            // Calculate and print the time taken to map the data
            Long end = System.currentTimeMillis();
            long elapsedTime = end - start;
            System.out.printf("\nFinished mapping in %02d:%02d:%02d.%02d%n", TimeUnit.MILLISECONDS.toHours(elapsedTime),
                    TimeUnit.MILLISECONDS.toMinutes(elapsedTime), TimeUnit.MILLISECONDS.toSeconds(elapsedTime),
                    TimeUnit.MILLISECONDS.toMillis(elapsedTime));

            // Generate output files
            System.out.println("\nOutput - Creating CSV files for Nodes, Properties and Edges");
            Export.generateCSVs("exports");
            System.out.println("Output - CSV files generated");
            Export.generateJSONGraph("exports", outputConn);
            System.out.println("Output - JSON file generated");

        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /**
     * Waits for all threads in `threads` to complete.
     * 
     * @param threads ArrayList containing Futures (We don't care about the return
     *                type)
     */
    private static void awaitTableCompletion(ArrayList<Future<?>> threads) {
        for (Future<?> thread : threads) {
            try {
                thread.get();
            } catch (InterruptedException | ExecutionException e) {
                e.printStackTrace();
            }
        }
        ;
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
        } else if (section.getName().equals("output")) {
            return new Config(section.get("connectionString"), section.get("driver"), section.get("database"));
        } else if (section.getName().equals("mapping")) {
            return new Config(Boolean.parseBoolean(section.get("tables")), Boolean.parseBoolean(section.get("views")),
                    section.get("schema"), section.get("tableNames"));
        }
        return new Config(section.get("connectionString"));
    }
}

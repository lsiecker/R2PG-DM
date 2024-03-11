package com.java.r2pgdm;

import java.io.File;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;

import org.ini4j.Wini;
import org.ini4j.Profile.Section;

public class App {
    public static PreparedStatement _statementEdges;
    public static InputConnection inputConn;

    public static void main(String[] args) {
        Runtime.getRuntime().addShutdownHook(new Thread() {
            public void run() {
                inputConn.connectionPool.closeAllConnections();
            }
        });

        try {
            Long start = System.currentTimeMillis();
            Wini ini = new Wini(new File("configs/mysql/tpch.ini"));
            Config input = GetConfiguration(ini.get("input"));

            inputConn = new InputConnection(input.connectionString, input.database, input.driver);
            new OutputConnection(inputConn);

            List<String> tables = inputConn.retrieveTableNames();

            // Transform tables in parallel
            ExecutorService executorService = Executors.newCachedThreadPool();

            ArrayList<Future<?>> tFinished = new ArrayList<>();

            // Create node + props
            tables.forEach(t -> tFinished.add(executorService.submit(() -> {
                try {
                    inputConn.createNodesAndProperties(t);
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            })));
            awaitTableCompletion(tFinished); // Wait for nodes and properties to finish creating
            System.out.println("Nodes with properties created");


            // Create edges
            tables.forEach(t -> tFinished.add(executorService.submit(() -> OutputConnection.createEdges(inputConn, t))));
            awaitTableCompletion(tFinished); // Wait for edges to finish creating
            System.out.println("Edges created");

            OutputConnection.printStatistics();

            Export.generateCSVs("exports");
            System.out.println("csv files generated");

            // Clean up database connection
            // inputConn.conn.commit(); // Do not commit changes (uncomment only for debugging purposes)
            // inputConn.connectionPool.closeAllConnections();

            Long end = System.currentTimeMillis();

            System.out.println("Finished in " + (end-start)/60000d + " minutes.");

        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            inputConn.connectionPool.closeAllConnections();
        }
    }

    /**
     * returns when all threads in `threads` to complete
     * @param threads Arraylist containing Futures (We don't care about the return type)
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
     * reads a section from the config.ini
     * @param section section to retrieve
     * @return Program configuration
     */
    private static Config GetConfiguration(Section section) {
        if (section.getName().equals("input")) {
            return new Config(section.get("connectionString"), section.get("driver"), section.get("database"));
        }
        return new Config(section.get("connectionString"));
    }
}

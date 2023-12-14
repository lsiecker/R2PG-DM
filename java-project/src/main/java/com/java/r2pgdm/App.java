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

    public static void main(String[] args) {
        try {
            Long start = System.currentTimeMillis();
            Wini ini = new Wini(new File("config.ini"));
            Config input = GetConfiguration(ini.get("input"));

            InputConnection inputConn = new InputConnection(input.connectionString, input.database, input.driver);
            new OutputConnection(inputConn);

            List<String> tables = inputConn.retrieveTableNames();

            // Transform tables in parallel
            int tCount = Runtime.getRuntime().availableProcessors();
            ExecutorService executorService = Executors.newFixedThreadPool(tCount);

            ArrayList<Future<?>> tFinished = new ArrayList<>();

            // Create node + props
            tables.forEach(t -> tFinished.add(executorService.submit(() -> inputConn.createNodesAndProperties(t))));
            awaitTableCompletion(tFinished); // Wait for nodes and properties to finish creating
            System.out.println("Nodes with properties created");


            // Create edges
            tables.forEach(t -> tFinished.add(executorService.submit(() -> OutputConnection.createEdges(inputConn, t))));
            awaitTableCompletion(tFinished); // Wait for edges to finish creating
            System.out.println("Edges created");

            OutputConnection.printStatistics();

            Export.generateCSVs("C:\\Users\\20182640\\OneDrive - TU Eindhoven\\01. TUe\\Master Thesis\\R2PG-DM-1\\exports\\graph");
            System.out.println("csv files generated");

            // Clean up database connection
            // inputConn.conn.commit(); // Do not commit changes (uncomment only for debugging purposes)
            inputConn.conn.close();

            Long end = System.currentTimeMillis();

            System.out.println("Finished in " + (end-start)/60000d + " minutes.");

        } catch (IOException | SQLException e) {
            e.printStackTrace();
        }
    }

    /**
     * returns when all threads in `threads` to complete
     * @param threads Arraylist containing Futures (We don't care about the return type)
     */
    private static void awaitTableCompletion(ArrayList<Future<?>> threads) {
        threads.forEach((future) ->{
            try {
                future.get();
            } catch (InterruptedException | ExecutionException e) {
                e.printStackTrace();
            }
        });
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

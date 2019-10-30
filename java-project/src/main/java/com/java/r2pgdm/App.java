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

            InputConnection inputConn = new InputConnection(input.ConnectionString, input.Database, input.Driver);
            OutputConnection outputConn = new OutputConnection(inputConn);

            List<String> tables = inputConn.GetTableName();
            // Transform tables in parallel
            int tCount = Runtime.getRuntime().availableProcessors();
            ExecutorService executorService = Executors.newFixedThreadPool(tCount);

            ArrayList<Future<?>> tFinished = new ArrayList<>();

            // Create node + props
            tables.forEach(t -> tFinished.add(executorService.submit(() -> inputConn.CreateNodesAndProperties(t))));
            awaitTableCompletion(tFinished); // Wait for nodes and properties to finish creating
            System.out.println("Nodes with properties created");


            // Create edges
            tables.forEach(t -> tFinished.add(executorService.submit(() -> createEdges(inputConn, t))));
            awaitTableCompletion(tFinished); // Wait for edges to finish creating
            System.out.println("Edges created");

            System.out.println("Mapping - Done.");
            OutputConnection.Statistics();

            Export.GenerateCSVs();
            System.out.println("Done");
            inputConn._con.commit();
            inputConn._con.close();

            Long end = System.currentTimeMillis();

            System.out.println("Finished in " + (end-start)/60000d + " minutes.");

        } catch (IOException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    private static void awaitTableCompletion(ArrayList<Future<?>> tFinished) {
        tFinished.forEach((future) ->{
            try {
                future.get();
            } catch (InterruptedException | ExecutionException e) {
                e.printStackTrace();
            }
        });
        tFinished.clear();
    }

    private static void createEdges(InputConnection inputConn, String t) {
        List<CompositeForeignKey> fks = inputConn.GetForeignKeys(t);
        System.out.println(fks.size() + " fks where found in table " + t);
        fks.forEach(fk -> inputConn.createEdges(fk, t));
    }

    private static Config GetConfiguration(Section section) {
        if (section.getName().equals("input")) {
            return new Config(section.get("connectionString"), section.get("driver"), section.get("database"));
        }
        return new Config(section.get("connectionString"));
    }
}

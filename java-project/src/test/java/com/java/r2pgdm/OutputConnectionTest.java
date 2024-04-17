package com.java.r2pgdm;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.*;

import static org.junit.Assert.*;

public class OutputConnectionTest {

    private InputConnection input;
    private OutputConnection output;
    private Connection conn;

    @Before
    public void connect() {
        try {
            Class.forName("org.sqlite.JDBC");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        input =  new InputConnection("jdbc:mysql://localhost:3306/world?user=root&password=password", "world", "mysql");
        output = new OutputConnection(input);
        try {
            conn = input.connectionPool.getConnection();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @After
    public void cleanup() {
        input.connectionPool.closeAllConnections();
    }

    private List<String> getTableNames() {
        ArrayList<String> tables = new ArrayList<>();
        try {
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("SHOW TABLES");


            while (rs.next()) {
                tables.add(rs.getString(1));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return tables;
    }

    @Test
    public void outputConnection() {
        List<String> tables = getTableNames();
        String[] expectedTables = {"node", "property", "edge"};
        assertTrue(tables.containsAll(Arrays.asList(expectedTables)));
    }

    @Test
    public void dropTablesIfExists() throws NoSuchMethodException {
        Method method = OutputConnection.class.getDeclaredMethod("dropTablesIfExists");
        method.setAccessible(true);

        try {
            method.invoke(output);
        } catch (IllegalAccessException | InvocationTargetException e) {
            e.printStackTrace();
        }

        List<String> tables = getTableNames();
        String[] expectedTables = {"node", "property", "edge"};

        for (String t: expectedTables) {
            assertFalse(tables.contains(t));
        }
    }

    @Test
    public void createEdges() throws SQLException {
        String[] tables = InputConnectionTest.expectedTables;

        for (String t : tables) {
            input.createNodesAndProperties(t);
        }

        for (String t : tables) {
            OutputConnection.createEdges(input, input, t);
        }

        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery("select * from edge");

        HashMap<String, Integer> counts = new HashMap<>();

        while (rs.next()) {
            String label = rs.getString(4);

            int count = counts.getOrDefault(label, 0);
            counts.put(label, count + 1);
        }

        Set<String> labels = counts.keySet();

        assertEquals(2, labels.size());
        labels.forEach((label) -> {
            switch(label) {
                case "countrylanguage-country":
                    assertEquals(Integer.valueOf(984), counts.get(label));
                    break;
                case "city-country":
                    assertEquals(Integer.valueOf(4079), counts.get(label));
                    break;
                default:
                    fail();
            }
        });
    }

    @Test
    public void printStatistics() {
        // Nothing to test, just prints
        try {
            OutputConnection.printStatistics();
        } catch (Exception ignored){}
    }
}

package com.java.r2pgdm;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.*;

import static org.junit.Assert.*;

public class OutputConnectionTest {

    private InputConnection input;
    private OutputConnection output;

    @Before
    public void connect() {
        try {
            Class.forName("org.sqlite.JDBC");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        input =  new InputConnection("jdbc:sqlite:junit.db", "", "");
        output = new OutputConnection(input);
    }

    @After
    public void cleanup() {
        try {
            input.conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    private List<String> getTableNames() {
        ArrayList<String> tables = new ArrayList<>();
        try {
            Statement stmt = input.conn.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT name FROM sqlite_master WHERE type= 'table' AND name NOT LIKE 'sqlite_%' ");


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
            System.out.println(t);
            input.createNodesAndProperties(t);
        }

        for (String t : tables) {
            OutputConnection.createEdges(input, t);
        }

        Statement stmt = input.conn.createStatement();
        ResultSet rs = stmt.executeQuery("select * from edge");

        HashMap<String, Integer> counts = new HashMap<>();

        while (rs.next()) {
            String label = rs.getString(4);

            int count = counts.getOrDefault(label, 0);
            counts.put(label, count + 1);
        }

        Set<String> labels = counts.keySet();

        assertEquals(4, labels.size());
        labels.forEach((label) -> {
            switch(label) {
                case "ForeignTable-BaseTable":
                    assertEquals(Integer.valueOf(3), counts.get(label));
                    break;
                case "ForeignTableSingle-ForeignTable":
                    assertEquals(Integer.valueOf(2), counts.get(label));
                    break;
                case "Friend-ForeignTable":
                    assertEquals(Integer.valueOf(5), counts.get(label));
                    break;
                case "Friend-Names":
                    assertEquals(Integer.valueOf(10), counts.get(label));
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

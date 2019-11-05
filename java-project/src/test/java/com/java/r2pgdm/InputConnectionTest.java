package com.java.r2pgdm;

import com.java.r2pgdm.graph.Node;
import org.apache.commons.lang3.tuple.ImmutablePair;
import org.apache.commons.lang3.tuple.Pair;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.*;

import static org.junit.Assert.*;


public class InputConnectionTest {

    InputConnection input;
    String[] expectedTables = {"BaseTable", "ForeignTable", "ForeignTableSingle", "Separate", "Names", "Friend"};
    Map<String, Pair<Integer, List<Integer>>> nrOfCFKs;
    Map<String, List<String>> columnNames;

    @Before
    public void nrOfCFKs() {
        nrOfCFKs = new HashMap<>();
        nrOfCFKs.put("BaseTable", new ImmutablePair<>(0, Arrays.asList(0) ));
        nrOfCFKs.put("ForeignTable", new ImmutablePair<>(1, Arrays.asList(2)));
        nrOfCFKs.put("ForeignTableSingle", new ImmutablePair<>(1, Arrays.asList(1)));
        nrOfCFKs.put("Separate", new ImmutablePair<>(0, Arrays.asList(0)));
        nrOfCFKs.put("Names", new ImmutablePair<>(0, Arrays.asList(0)));
        nrOfCFKs.put("Friend", new ImmutablePair<>(2, Arrays.asList(2, 1)));
    }

    @Before
    public void setFieldNames() {
        columnNames = new HashMap<>();
        columnNames.put("BaseTable", Arrays.asList("id", "name", "extra"));
        columnNames.put("ForeignTable", Arrays.asList("id", "fid", "fname"));
        columnNames.put("ForeignTableSingle", Arrays.asList("id", "fid"));
        columnNames.put("Separate", Arrays.asList("id", "extra"));
        columnNames.put("Names", Arrays.asList("id", "name"));
        columnNames.put("Friend", Arrays.asList("name", "friend", "fid"));
    }

    @Before
    public void connect() {
        try {
            Class.forName("org.sqlite.JDBC");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        input =  new InputConnection("jdbc:sqlite:junit.db", "", "");
        new OutputConnection(input);
    }

    @After
    public void cleanup() {
        try {
            input.conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Test
    public void connectionTest() {
        assertNotNull(input);
    }

    @Test
    public void retrieveTableNames() {
        List<String> tables = input.retrieveTableNames();

        assertEquals(expectedTables.length, tables.size());

        for (String t : expectedTables) {
            assertTrue(tables.contains(t));
        }
    }

    @Test
    public void retrieveMetaData() throws NoSuchFieldException, IllegalAccessException {
        input.retrieveTableNames();

        Field field = input.getClass().getDeclaredField("_metaData");
        field.setAccessible(true);

        assertNotNull(field.get(input));
    }

    @Test
    public void retrieveCompositeForeignKeys() {
        for (String t : expectedTables) {
            List<CompositeForeignKey> cfks = input.retrieveCompositeForeignKeys(t);

            Pair<Integer, List<Integer>> expected = nrOfCFKs.get(t);
            ArrayList<Integer> fkSizes = new ArrayList<>(expected.getRight());

            assertEquals(expected.getLeft(), (Integer) cfks.size());

            for (CompositeForeignKey cfk : cfks) {
                assertTrue(fkSizes.contains(cfk.foreignKeys.size()));
                expected.getRight().remove(fkSizes);
            }
        }

    }

    @Test
    public void getColumns() throws NoSuchMethodException, InvocationTargetException, IllegalAccessException {

        Method method = input.getClass().getDeclaredMethod("getColumns", String.class);
        method.setAccessible(true);

        for (String t : expectedTables) {
            List<String> expectedColumns = columnNames.get(t);
            List<String> actualColumns = (List<String>) method.invoke(input, t);
            assertEquals(expectedColumns.size(), actualColumns.size());
        }
    }

    @Test
    public void createNode() throws NoSuchMethodException, InvocationTargetException, IllegalAccessException {
        Method method = input.getClass().getDeclaredMethod("createNode", String.class);
        method.setAccessible(true);

        ArrayList<String> ids = new ArrayList<>();

        for (int i = 0 ; i < 10; i++) {
            Node node = (Node) method.invoke(input, "table");

            assertEquals("table", node.label);
            assertFalse(ids.contains(node.id));
            ids.add(node.id);
        }
    }

    @Test
    public void createNodesAndProperties() throws SQLException {
        int total = 0;
        int tablesProcessed = 1;

        for (String t : expectedTables) {
            Statement stmt = input.conn.createStatement();
            ResultSet rowCountRS = stmt.executeQuery("select count(*) from " + t);
            rowCountRS.next();

            int rowCount =  rowCountRS.getInt(1);
            total += rowCount;

            input.createNodesAndProperties(t);

            rowCountRS = stmt.executeQuery("select count(*) from node");
            rowCountRS.next();

            int rowCount2 = rowCountRS.getInt(1);
            assertEquals(total, rowCount2);

            ResultSet uniqueLabels = stmt.executeQuery("select count(distinct label) from node");
            uniqueLabels.next();

            int labels = uniqueLabels.getInt(1);
            assertEquals(tablesProcessed, labels);

            tablesProcessed++;
        }
    }
}

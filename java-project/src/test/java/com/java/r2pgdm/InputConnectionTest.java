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
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.*;

import static org.junit.Assert.*;


public class InputConnectionTest {

    InputConnection input;
    Connection conn;
    static String[] expectedTables = {"city", "country", "countrylanguage"};
    Map<String, Pair<Integer, List<Integer>>> nrOfCFKs;
    Map<String, List<String>> columnNames;

    @Before
    public void nrOfCFKs() {
        nrOfCFKs = new HashMap<>();
        // Update based on foreign key relationships in the world dataset
        nrOfCFKs.put("country", new ImmutablePair<>(0, Arrays.asList(0))); // Country has 0 foreign keys
        nrOfCFKs.put("city", new ImmutablePair<>(1, Arrays.asList(1)));    // City table has 0 foreign keys
        nrOfCFKs.put("countrylanguage", new ImmutablePair<>(1, Arrays.asList(1)));
    }
    
    @Before
    public void setFieldNames() {
        columnNames = new HashMap<>();
        // Update based on column names in the world dataset
        columnNames.put("country", Arrays.asList("Capital", "Code", "Code2", "Continent", "GNP", "GNPOld", "GovernmentForm", "HeadOfState", "IndepYear", "LifeExpectancy", "LocalName", "Name", "Population", "Region", "SurfaceArea")); // Example: Country table columns
        columnNames.put("city", Arrays.asList("CountryCode", "District", "ID", "Name", "Population"));
        columnNames.put("countrylanguage", Arrays.asList("CountryCode", "IsOfficial", "Language", "Percentage"));
    }

    @Before
    public void connect() {
        input =  new InputConnection("jdbc:mysql://localhost:3306/world?user=root&password=password", "world", "mysql");
        try {
            conn = input.connectionPool.getConnection();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        new OutputConnection(input, "mysql");
    }

    @After
    public void cleanup() {
        input.connectionPool.closeAllConnections();
    }

    @Test
    public void connectionTest() {
        assertNotNull(input);
        assertTrue(input.connectionPool.availableConnections.size() + input.connectionPool.busyConnections.size() > 0);
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

    @SuppressWarnings("unlikely-arg-type")
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
            @SuppressWarnings("unchecked")
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
            Statement stmt = conn.createStatement();
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

    @Test
    public void TestRetrieveJoinTableNames() throws SQLException {
        List<String> tables = input.retrieveTableNames();

        Map<String, List<CompositeForeignKey>> join_tables = input.retrieveJoinTableNames(tables);

        assertEquals(0, join_tables.size());
    }
}


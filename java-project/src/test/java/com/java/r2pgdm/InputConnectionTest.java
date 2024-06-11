package com.java.r2pgdm;

import com.java.r2pgdm.graph.Node;
import org.apache.commons.lang3.tuple.ImmutablePair;
import org.apache.commons.lang3.tuple.Pair;
import org.junit.After;
import org.junit.Before;
import org.junit.Ignore;
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
    static String[] expectedJoinTable = {"country"};
    static String[] expectedTablesNodes = {"city", "countrylanguage"};
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
        columnNames.put("country", Arrays.asList("Capital", "Code", "Code2", "Continent", "GNP", "GNPOld", "GovernmentForm", "HeadOfState", "IndepYear", "LifeExpectancy", "LocalName", "Name", "Population", "Region", "SurfaceArea"));
        columnNames.put("city", Arrays.asList("CountryCode", "District", "ID", "Name", "Population"));
        columnNames.put("countrylanguage", Arrays.asList("CountryCode", "IsOfficial", "Language", "Percentage"));
    }

    @Before
    public void connect() {
        input = new InputConnection("jdbc:sqlite::memory:", "world", "sqlite", null);
        try {
            conn = input.connectionPool.getConnection();
            setupDatabase();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        new OutputConnection(input, "sqlite", "world", null);
    }

    private void setupDatabase() throws SQLException {
        Statement stmt = conn.createStatement();
        stmt.executeUpdate("PRAGMA foreign_keys = ON");
        stmt.executeUpdate("CREATE TABLE IF NOT EXISTS country (Code TEXT PRIMARY KEY, Name TEXT, Continent TEXT, Region TEXT, SurfaceArea REAL, IndepYear INTEGER, Population INTEGER, LifeExpectancy REAL, GNP REAL, GNPOld REAL, LocalName TEXT, GovernmentForm TEXT, HeadOfState TEXT, Capital INTEGER, Code2 TEXT)");
        stmt.executeUpdate("CREATE TABLE IF NOT EXISTS city (ID INTEGER PRIMARY KEY, Name TEXT, CountryCode TEXT, District TEXT, Population INTEGER, FOREIGN KEY(CountryCode) REFERENCES country(Code))");
        stmt.executeUpdate("CREATE TABLE IF NOT EXISTS countrylanguage (CountryCode TEXT, Language TEXT, IsOfficial TEXT, Percentage REAL, PRIMARY KEY (CountryCode, Language), FOREIGN KEY(CountryCode) REFERENCES country(Code))");
        stmt.executeUpdate("INSERT INTO country (Code, Name) VALUES ('USA', 'United States'), ('CAN', 'Canada')");
        stmt.executeUpdate("INSERT INTO city (ID, Name, CountryCode) VALUES (1, 'New York', 'USA'), (2, 'Los Angeles', 'USA'), (3, 'Toronto', 'CAN')");
        stmt.executeUpdate("INSERT INTO countrylanguage (CountryCode, Language, IsOfficial, Percentage) VALUES ('USA', 'English', 'T', 82.1), ('CAN', 'English', 'T', 56.9), ('CAN', 'French', 'T', 21.4)");
        
        stmt.close();

        // Verify table creation
        verifyTableExists("country");
        verifyTableExists("city");
        verifyTableExists("countrylanguage");
    }

    private void verifyTableExists(String tableName) throws SQLException {
        ResultSet rs = conn.getMetaData().getTables(null, null, tableName, null);
        if (!rs.next()) {
            throw new SQLException("Table " + tableName + " does not exist.");
        }
        rs.close();
    }

    @After
    public void cleanup() {
        try {
            Statement stmt = conn.createStatement();
            stmt.executeUpdate("DROP TABLE IF EXISTS country");
            stmt.executeUpdate("DROP TABLE IF EXISTS city");
            stmt.executeUpdate("DROP TABLE IF EXISTS countrylanguage");
            stmt.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
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
        for (int i = 0; i < 10; i++) {
            Node node = (Node) method.invoke(input, "table");
            assertEquals("table", node.label);
            assertFalse(ids.contains(node.id));
            ids.add(node.id);
        }
    }

    @Test
    @Ignore("Database is not correctly connected for this test")
    public void createNodesAndProperties() throws SQLException {
        int total = 0;
        int tablesProcessed = 1;
        for (String t : expectedTablesNodes) {
            Statement stmt = conn.createStatement();
            ResultSet rowCountRS = stmt.executeQuery("select count(*) from " + t);
            rowCountRS.next();
            int rowCount = rowCountRS.getInt(1);
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
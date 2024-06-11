package com.java.r2pgdm;
import org.junit.Test;
import static org.junit.Assert.*;

public class ConfigTest {

    @Test
    public void testGetSetDriver() {
        Config config = new Config("jdbc:mysql://localhost:3306/mydb", "mysql", "mydb");
        config.setDriver("postgresql");
        assertEquals("postgresql", config.getDriver());
    }

    @Test
    public void testGetSetDatabase() {
        Config config = new Config("jdbc:mysql://localhost:3306/mydb", "mysql", "mydb");
        config.setDatabase("newdb");
        assertEquals("newdb", config.getDatabase());
    }

    @Test
    public void testGetSetConnectionString() {
        Config config = new Config("jdbc:mysql://localhost:3306/mydb", "mysql", "mydb");
        config.setConnectionString("jdbc:postgresql://localhost:5432/mydb");
        assertEquals("jdbc:postgresql://localhost:5432/mydb", config.getConnectionString());
    }

    @Test
    public void testGetSetConnectionStringNoDriverOrDB() {
        Config config = new Config("jdbc:mysql://localhost:3306/mydb");
        assertEquals("jdbc:mysql://localhost:3306/mydb", config.getConnectionString());
        assertNull(config.getDriver());
        assertNull(config.getDatabase());
    }

    @Test
    public void testGetSetTables() {
        Config config = new Config(true, false, null, "*");
        config.setTables(false);
        assertFalse(config.getTables());
    }

    @Test
    public void testGetSetViews() {
        Config config = new Config(true, false, null, "*");
        config.setViews(true);
        assertTrue(config.getViews());
    }
}
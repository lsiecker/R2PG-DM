package com.java.r2pgdm;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.fail;

import java.sql.Connection;
import java.sql.SQLException;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

public class ConnectionPoolTest {
    private ConnectionPool connectionPool;

    @Before
    public void setUp() {
        try {
            connectionPool = new ConnectionPool("sqlite", "jdbc:sqlite::memory:", 0, 6, true);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @After
    public void tearDown() {
        connectionPool.closeAllConnections();
    }

    @Test
    public void testGetConnectionWhenPoolIsEmpty() {
        try {
            Connection connection = connectionPool.getConnection();
            assertNotNull(connection);
        } catch (SQLException e) {
            fail("Failed to get connection: " + e.getMessage());
        }
    }

    @Test
    public void testMultipleConnectionsAreDifferent() {
        try {
            Connection connection1 = connectionPool.getConnection();
            Connection connection2 = connectionPool.getConnection();
            assertNotEquals(connection1, connection2);
        } catch (SQLException e) {
            fail("Failed to get connections: " + e.getMessage());
        }
    }

    @Test
    public void testReleaseConnectionDoesNotThrowException() {
        try {
            Connection connection = connectionPool.getConnection();
            connectionPool.free(connection);
        } catch (SQLException e) {
            fail("Failed to release connection: " + e.getMessage());
        }
    }

    @Test
    public void testGetSameConnectionAfterRelease() {
        try {
            Connection connection1 = connectionPool.getConnection();
            connectionPool.free(connection1);
            Connection connection2 = connectionPool.getConnection();
            assertEquals(connection1, connection2);
        } catch (SQLException e) {
            fail("Failed to get connections: " + e.getMessage());
        }
    }

    @Test
    public void testConnectionLimitReached() {
        tearDown();
        try {
            // Set up connection pool with waitIfBusy = false
            connectionPool = new ConnectionPool("sqlite", "jdbc:sqlite::memory:", 0, 2, false);
            for (int i = 0; i < 2; i++) {
                connectionPool.getConnection(); // Get 2 connections
            }
            // Try to get one more connection
            connectionPool.getConnection();
            fail("Expected SQLException was not thrown");
        } catch (SQLException e) {
            assertEquals("Connection limit reached", e.getMessage());
        }
    }
}

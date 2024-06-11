package com.java.r2pgdm;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Vector;

/**
 * A connection pool implementation for manageing database connections.
 * This class allows efficient reuse of database connections to improve performance.
 */
public class ConnectionPool implements Runnable {
    private String connectionString;    // JDBC connection string
    private int maxConnections;         // Maximum number of connections allowed
    private boolean waitIfBusy;         // Flag to indicate whether to wait if all connections are busy
    public Vector<Connection> availableConnections, busyConnections; // Vectors to store available and busy connections
    private boolean connectionPending = false; // Flag to indicate if a connection is being established

    /**
     * Default constructor for ConnectionPool.
     */
    public ConnectionPool() {

    }

    /**
     * Constructs a ConnectionPool with the specified parameters.
     *
     * @param driver            JDBC driver class name
     * @param connectionString  JDBC connection string
     * @param initialConnections Initial number of connections to create
     * @param maxConnections    Maximum number of connections allowed in the pool
     * @param waitIfBusy        Flag to indicate whether to wait if all connections are busy
     * @throws SQLException     If an SQL exception occurs while creating connections
     */
    public ConnectionPool(String driver, String connectionString, int initialconnections,
            int maxConnections, boolean waitIfBusy) throws SQLException {
        this.connectionString = connectionString;
        this.maxConnections = maxConnections;
        this.waitIfBusy = waitIfBusy;

        if (initialconnections > maxConnections) {
            initialconnections = maxConnections;
        }

        availableConnections = new Vector<Connection>(initialconnections);
        busyConnections = new Vector<Connection>();

        for (int i = 0; i < initialconnections; i++) {
            availableConnections.addElement(makeNewConnection());
        }
    }

    /**
     * Retrieves a connection from the pool.
     *
     * @return A database Connection object
     * @throws SQLException If unable to retrieve a connection
     * @throws InterruptedExecution If interrupted while waiting for a connection
     */
    public synchronized Connection getConnection() throws SQLException {
        if (!availableConnections.isEmpty()) {
            Connection existingConnection = (Connection) availableConnections.lastElement();
            int lastIndex = availableConnections.size() - 1;
            availableConnections.removeElementAt(lastIndex);

            if (existingConnection.isClosed()) {
                  notifyAll(); // Freed up a spot for anybody waiting
                  return (getConnection());
            } else {
                  busyConnections.addElement(existingConnection);
                  return (existingConnection);
            }

        } else {
            
            if ((totalConnections() < maxConnections) && !connectionPending) {
                makeBackgroundConnection();
            } else if (!waitIfBusy) {
                throw new SQLException("Connection limit reached");
            }

        }
        try {
            wait();
        } catch (InterruptedException e) {
            // Interrupted while waiting for a connection
            e.printStackTrace();
        } return (getConnection());
    }

    /**
     * Calculates the total number of connections in the pool.
     *
     * @return Total number of connections
     */
    private int totalConnections() {
        return (availableConnections.size() + busyConnections.size());
    }

    /**
     * Initiates a background thread to create a new connection.
     * 
     * @throws OutOfMemoryError If unable to start a new thread due to out of memory.
     */
    private void makeBackgroundConnection() {
        connectionPending = true;
        try {
            Thread connectThread = new Thread(this);
            connectThread.start();
        } catch (OutOfMemoryError e) {
            // Unable to start a new thread due to out of memory
            e.printStackTrace();
        }
    }

    /**
     * Creates a new database connection.
     *
     * @return A new database Connection object
     * @throws SQLException If unable to create a new connection
     */
    private Connection makeNewConnection() throws SQLException {
        try {
            // Class.forName(driver);
            Connection connection = DriverManager.getConnection(connectionString);
            return (connection);
        } catch (Exception e) {
            e.printStackTrace();
            throw new SQLException("Connection Pool:: SQLException encountered:: " + e.getMessage());
        }
    }

    /**
     * Frees up a connection and returns it to the pool.
     *
     * @param connection The Connection object to be freed
     */
    public synchronized void free(Connection connection) {
        busyConnections.removeElement(connection);
        availableConnections.addElement(connection);
        notifyAll();
    }

    /**
     * Closes all connections in the pool.
     */
    public synchronized void closeAllConnections() {
        System.out.print("Closing all connections to the server... \r");
        closeConnections(availableConnections);
        availableConnections = new Vector<Connection>();
        closeConnections(busyConnections);
        busyConnections = new Vector<Connection>();
        System.out.print("Closed all connections to the server.   ");
    }

    /**
     * Closes all connections in the specified vector.
     *
     * @param connections Vector of Connection objects to be closed
     */
    private void closeConnections(Vector<Connection> connections) {
        try {
            for (int i = 0; i < connections.size(); i++) {
                Connection connection = (Connection) connections.elementAt(i);
                if (!connection.isClosed()) {
                    connection.close();
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    /**
     * Sets the waitIfBusy flag.
     *
     * @param bool The boolean value to set
     */
    public void setWaitIfBusy(Boolean bool) {
        waitIfBusy = bool;
    }

    /**
     * Background thread implementation to create a new connection.
     */
    public void run() {
        try {
            Connection connection = makeNewConnection();
            synchronized (this) {
                availableConnections.addElement(connection);
                connectionPending = false;
                notifyAll();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void printStatistics() {
        System.out.printf("%-32s: %s\n", "Maximum connections", maxConnections);
        System.out.printf("%-32s: %s\n", "Initial connections", busyConnections.size());
        System.out.printf("%-32s: %s\n", "Total connections", totalConnections());
        System.out.printf("%-32s: %s\n", "Wait if busy", waitIfBusy);
    }
}

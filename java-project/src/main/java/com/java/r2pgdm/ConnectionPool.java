package com.java.r2pgdm;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Vector;

public class ConnectionPool implements Runnable {
    private String connectionString;
    private int maxConnections;
    private boolean waitIfBusy;
    public Vector<Connection> availableConnections, busyConnections;
    private boolean connectionPending = false;

    public ConnectionPool() {

    }

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
        } catch (InterruptedException ie) {

        } return (getConnection());
    }

    private int totalConnections() {
        return (availableConnections.size() + busyConnections.size());
    }

    private void makeBackgroundConnection() {
        connectionPending = true;
        try {
            Thread connectThread = new Thread(this);
            connectThread.start();
        } catch (OutOfMemoryError e) {

        }
    }

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

    public synchronized void free(Connection connection) {
        busyConnections.removeElement(connection);
        availableConnections.addElement(connection);
        notifyAll();
    }

    public synchronized void closeAllConnections() {
        System.out.print("Closing all connections to the server... \r");
        closeConnections(availableConnections);
        availableConnections = new Vector<Connection>();
        closeConnections(busyConnections);
        busyConnections = new Vector<Connection>();
        System.out.print("Closed all connections to the server.   ");
    }

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

    public void setWaitIfBusy(Boolean bool) {
        waitIfBusy = bool;
    }

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
}

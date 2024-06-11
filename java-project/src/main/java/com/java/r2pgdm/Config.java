package com.java.r2pgdm;

import lombok.Getter;
import lombok.Setter;

/**
 * Contains various environment settings set by the program's user in config.ini
 */
class Config {

    @Getter
    @Setter
    String driver; // Name of the sql driver

    @Getter
    @Setter
    String database; // Name of the database

    @Getter
    @Setter
    String connectionString; // JDBC connection string

    @Getter
    @Setter
    Boolean tables;

    @Getter
    @Setter
    Boolean views;

    @Getter
    @Setter
    String schema;

    @Getter
    @Setter
    String[] tableNames;

    Config(String connString, String driver, String db) {
        this.driver = driver;
        this.database = db;
        this.connectionString = connString;
    }

    Config(String connString) {
        this.driver = null;
        this.database = null;
        this.connectionString = connString;
    }

    Config(Boolean tables, Boolean views, String schema, String tableNames) {
        this.tables = tables;
        this.views = views;
        this.schema = schema;
        this.tableNames = tableNames.split(",");
    }
}
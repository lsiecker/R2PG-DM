package com.java.r2pgdm.converter;

public class SQLConverterFactory {
    public static SQLConverter getConverter(String dbType) {
        switch (dbType.toLowerCase()) {
            case "mysql":
                return new MySQLConverter();
            case "mssql":
                return new MSSQLConverter();
            default:
                throw new IllegalArgumentException("Unsupported database type: " + dbType);
        }
    }
}

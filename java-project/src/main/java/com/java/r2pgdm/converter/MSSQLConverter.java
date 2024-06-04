package com.java.r2pgdm.converter;

public class MSSQLConverter implements SQLConverter {
    @Override
    public String convertQuery(String generalQuery) {
        // Add conversion logic for MSSQL here
        // Example for BLOB handling
        if (generalQuery.contains("BLOB")) {
            generalQuery = generalQuery.replace("BLOB", "VARBINARY(MAX)");
        }
        return generalQuery;
    }
}

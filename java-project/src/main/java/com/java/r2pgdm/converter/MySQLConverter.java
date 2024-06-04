package com.java.r2pgdm.converter;

public class MySQLConverter implements SQLConverter {
    @Override
    public String convertQuery(String generalQuery) {
        // Add conversion logic for MySQL here
        // Example for BLOB handling
        if (generalQuery.contains("BLOB")) {
            generalQuery = generalQuery.replace("BLOB", "LONGBLOB");
        }
        return generalQuery;
    }
}

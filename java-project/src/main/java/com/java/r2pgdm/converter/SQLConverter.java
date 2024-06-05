package com.java.r2pgdm.converter;

import java.sql.SQLException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;

public interface SQLConverter {
    String convertQuery(String generalQuery);
    String convertColumnDefinition(ResultSetMetaData metaData, int columnIndex) throws SQLException;
    void setPreparedStatementParameter(PreparedStatement stmt, ResultSet values, ResultSetMetaData metaData, int columnIndex) throws SQLException;
}


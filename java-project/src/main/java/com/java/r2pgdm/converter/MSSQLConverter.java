package com.java.r2pgdm.converter;

import java.sql.SQLException;

import org.locationtech.jts.io.WKTWriter;

import com.microsoft.sqlserver.jdbc.Geography;

import java.sql.Blob;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;

public class MSSQLConverter implements SQLConverter {
    @Override
    public String convertQuery(String generalQuery) {
        // General query conversion logic
        return generalQuery;
    }

    @Override
    public String convertColumnDefinition(ResultSetMetaData metaData, int columnIndex) throws SQLException {
        String columnName = metaData.getColumnName(columnIndex);
        String columnType = metaData.getColumnTypeName(columnIndex).toLowerCase();
        Boolean signed = metaData.isSigned(columnIndex); // true if signed, false if unsigned (only for integer types
        int columnSize = metaData.getPrecision(columnIndex);
        int decimalDigits = metaData.getScale(columnIndex);
        boolean isNullable = metaData.isNullable(columnIndex) == ResultSetMetaData.columnNullable;

        if (columnName.contains(" ") | columnName.equalsIgnoreCase("TOP") | columnName.equalsIgnoreCase("FUNCTION")) {
            columnName = "[" + columnName + "]";
        }

        if (columnType.contains("mediumint")) {
            columnType = "int";
        } else if (columnType.contains("timestamp")) {
            columnType = "datetime";
        } else if (columnType.contains("year")) {
            columnType = "int";
            // } else if (columnType.contains("blob")) {
            // columnType = "varbinary(max)";
        } else if (columnType.contains("geometry")) {
            columnType = "geography";
            // } else if (columnType.contains("nvarchar") & (columnSize > 7999)) {
            // columnType = "varbinary(max)";
        }

        StringBuilder columnDefinition = new StringBuilder(columnName + " " + columnType);

        if (columnType.matches("varchar|char|nvarchar|nchar")) {
            if (columnSize > 0) {
                columnDefinition.append("(").append(columnSize).append(")");
            }
        } else if (columnType.matches("decimal|numeric")) {
            if (columnSize > 0 && decimalDigits >= 0) {
                columnDefinition.append("(").append(columnSize).append(", ").append(decimalDigits).append(")");
            }
        }

        if (!signed) {
            columnDefinition = new StringBuilder(columnDefinition.toString().replace("unsigned", ""));
        }

        if (isNullable) {
            columnDefinition.append(" NULL");
        } else {
            columnDefinition.append(" NOT NULL");
        }

        return columnDefinition.toString();
    }

    @Override
    public void setPreparedStatementParameter(PreparedStatement stmt, ResultSet values, ResultSetMetaData metaData,
            int columnIndex) throws SQLException {
        Object value = values.getObject(columnIndex);
        try {
            if (metaData.getColumnTypeName(columnIndex).equalsIgnoreCase("YEAR") && value != null) {
                if (value instanceof Date) {
                    stmt.setInt(columnIndex, ((Date) value).toLocalDate().getYear());
                } else if (value instanceof Integer) {
                    stmt.setInt(columnIndex, (Integer) value);
                } else if (value instanceof String) {
                    stmt.setInt(columnIndex, Integer.parseInt((String) value));
                } else {
                    stmt.setInt(columnIndex, Integer.parseInt(value.toString()));
                }
            } else if (value instanceof Geography) {
                org.locationtech.jts.geom.Geometry geometryValue = (org.locationtech.jts.geom.Geometry) value;
                WKTWriter wktWriter = new WKTWriter();
                String geometryString = wktWriter.write(geometryValue);
                stmt.setString(columnIndex, "ST_GeomFromText('" + geometryString + "')");
            } else if (value instanceof Blob) {
                Blob blob = (Blob) value;
                stmt.setBinaryStream(columnIndex, blob.getBinaryStream(), (int) blob.length());
            } else if (value instanceof byte[]) {
                stmt.setBytes(columnIndex, (byte[]) value);
            } else {
                stmt.setObject(columnIndex, value);
            }
        } catch (Exception e) {
            System.err.println(
                    "Error setting value for column: " + metaData.getColumnName(columnIndex) + " with value: " + value);
            throw e;
        }
    }
}

package com.java.r2pgdm.converter;

import org.junit.Test;

import static org.junit.Assert.*;

public class SQLConverterFactoryTest {

    @Test
    public void getConverter_shouldReturnMySQLConverter_whenDbTypeIsMySQL() {
        // Arrange
        String dbType = "mysql";

        // Act
        SQLConverter converter = SQLConverterFactory.getConverter(dbType);

        // Assert
        assertTrue(converter instanceof MySQLConverter);
    }

    @Test
    public void getConverter_shouldReturnMSSQLConverter_whenDbTypeIsMSSQL() {
        // Arrange
        String dbType = "mssql";

        // Act
        SQLConverter converter = SQLConverterFactory.getConverter(dbType);

        // Assert
        assertTrue(converter instanceof MSSQLConverter);
    }

    @Test(expected = IllegalArgumentException.class)
    public void getConverter_shouldThrowIllegalArgumentException_whenDbTypeIsUnsupported() {
        // Arrange
        String dbType = "oracle";

        // Act
        SQLConverterFactory.getConverter(dbType);

        // Assert (Exception expected)
    }
}
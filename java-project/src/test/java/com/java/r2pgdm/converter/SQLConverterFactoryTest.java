package com.java.r2pgdm.converter;

import org.junit.Test;

import static org.junit.Assert.*;

public class SQLConverterFactoryTest {

    @Test
    public void getConverter_shouldReturnMySQLConverter_whenDbTypeIsMySQL() {
        String dbType = "mysql";
        SQLConverter converter = SQLConverterFactory.getConverter(dbType);
        assertTrue(converter instanceof MySQLConverter);
    }

    @Test
    public void getConverter_shouldReturnMSSQLConverter_whenDbTypeIsMSSQL() {
        String dbType = "mssql";
        SQLConverter converter = SQLConverterFactory.getConverter(dbType);
        assertTrue(converter instanceof MSSQLConverter);
    }

    @Test(expected = IllegalArgumentException.class)
    public void getConverter_shouldThrowIllegalArgumentException_whenDbTypeIsUnsupported() {
        String dbType = "oracle";
        SQLConverterFactory.getConverter(dbType);
    }
}
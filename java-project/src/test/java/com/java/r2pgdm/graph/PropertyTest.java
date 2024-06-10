package com.java.r2pgdm.graph;

import org.junit.Test;

import static org.junit.Assert.assertEquals;

public class PropertyTest {

    @Test
    public void testGetProperty() {
        // Arrange
        String id = "1";
        String key = "name";
        String value = "John";

        // Act
        Property property = new Property(id, key, value);

        // Assert
        assertEquals(id, property.getId());
        assertEquals(key, property.getKey());
        assertEquals(value, property.getValue());
    }

    @Test
    public void testSetProperty() {
        // Arrange
        String id = "1";
        String key = "name";
        String value = "John";

        Property property = new Property(id, key, value);

        property.setId("2");
        property.setKey("age");
        property.setValue("25");

        // Assert
        assertEquals("2", property.getId());
        assertEquals("age", property.getKey());
        assertEquals("25", property.getValue());
    }
}
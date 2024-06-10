package com.java.r2pgdm;

import org.junit.Test;

import static org.junit.Assert.assertEquals;

public class ForeignKeyTest {

    @Test
    public void testToString() {
        ForeignKey foreignKey = new ForeignKey("sourceTable", "targetTable", "sourceAttribute", "targetAttribute");
        String expected = "ForeignKey{sourceTable='sourceTable', targetTable='targetTable', sourceAttribute='sourceAttribute', targetAttribute='targetAttribute'}";
        assertEquals(expected, foreignKey.toString());
    }

    @Test
    public void testGettersAndSetters() {
        ForeignKey foreignKey = new ForeignKey("sourceTable", "targetTable", "sourceAttribute", "targetAttribute");
        assertEquals("sourceTable", foreignKey.getSourceTable());
        assertEquals("targetTable", foreignKey.getTargetTable());
        assertEquals("sourceAttribute", foreignKey.getSourceAttribute());
        assertEquals("targetAttribute", foreignKey.getTargetAttribute());

        foreignKey.setSourceTable("newSourceTable");
        foreignKey.setTargetTable("newTargetTable");
        foreignKey.setSourceAttribute("newSourceAttribute");
        foreignKey.setTargetAttribute("newTargetAttribute");

        assertEquals("newSourceTable", foreignKey.getSourceTable());
        assertEquals("newTargetTable", foreignKey.getTargetTable());
        assertEquals("newSourceAttribute", foreignKey.getSourceAttribute());
        assertEquals("newTargetAttribute", foreignKey.getTargetAttribute());
    }
}
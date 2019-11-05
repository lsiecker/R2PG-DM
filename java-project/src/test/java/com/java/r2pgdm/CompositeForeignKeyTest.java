package com.java.r2pgdm;

import org.junit.Test;

import static org.junit.Assert.assertEquals;

public class CompositeForeignKeyTest {

    @Test
    public void addForeignKeyTestOne() {
        CompositeForeignKey cfk = new CompositeForeignKey();
        assertEquals(0, cfk.foreignKeys.size());

        cfk.addForeignKey(new ForeignKey("source", "target", "sA", "tA"));
        assertEquals(1, cfk.foreignKeys.size());
        assertEquals("source", cfk.sourceTable);
        assertEquals("target", cfk.targetTable);

        for (ForeignKey fk : cfk.foreignKeys) {
            assertEquals("source", fk.sourceTable);
            assertEquals("target", fk.targetTable);
        }
    }

    @Test
    public void addForeignKeyTestMultipleCorrect() {
        CompositeForeignKey cfk = new CompositeForeignKey();
        assertEquals(0, cfk.foreignKeys.size());

        cfk.addForeignKey(new ForeignKey("source", "target", "sA", "tA"));
        cfk.addForeignKey(new ForeignKey("source", "target", "sB", "tA"));
        cfk.addForeignKey(new ForeignKey("source", "target", "sB", "tB"));

        assertEquals(3, cfk.foreignKeys.size());
        assertEquals("source", cfk.sourceTable);
        assertEquals("target", cfk.targetTable);

        for (ForeignKey fk : cfk.foreignKeys) {
            assertEquals("source", fk.sourceTable);
            assertEquals("target", fk.targetTable);
        }
    }

    @Test(expected = IllegalArgumentException.class)
    public void addForeignKeyTestMultipleIncorrectSource() {
        CompositeForeignKey cfk = new CompositeForeignKey();
        assertEquals(0, cfk.foreignKeys.size());

        cfk.addForeignKey(new ForeignKey("source", "target", "sA", "tA"));
        cfk.addForeignKey(new ForeignKey("source", "target", "sB", "tA"));
        cfk.addForeignKey(new ForeignKey("other", "target", "sB", "tB"));
    }

    @Test(expected = IllegalArgumentException.class)
    public void addForeignKeyTestMultipleIncorrectTarget() {
        CompositeForeignKey cfk = new CompositeForeignKey();
        assertEquals(0, cfk.foreignKeys.size());

        cfk.addForeignKey(new ForeignKey("source", "target", "sA", "tA"));
        cfk.addForeignKey(new ForeignKey("source", "target", "sB", "tA"));
        cfk.addForeignKey(new ForeignKey("source", "others", "sB", "tB"));
    }
}

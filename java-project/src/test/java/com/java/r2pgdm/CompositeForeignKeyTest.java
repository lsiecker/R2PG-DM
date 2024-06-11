package com.java.r2pgdm;

import org.junit.Test;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;
import static org.junit.Assert.fail;

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

    @Test
    public void addForeignKeyTestEmptyComposite() {
        CompositeForeignKey cfk = new CompositeForeignKey();
        assertEquals(0, cfk.foreignKeys.size());
        assertEquals("", cfk.sourceTable);
        assertEquals("", cfk.targetTable);

        ForeignKey fk = new ForeignKey("source", "target", "sA", "tA");
        cfk.addForeignKey(fk);

        assertEquals(1, cfk.foreignKeys.size());
        assertEquals("source", cfk.sourceTable);
        assertEquals("target", cfk.targetTable);
        assertTrue(cfk.foreignKeys.contains(fk));
    }

    @Test
    public void addForeignKeyTestDifferentSourceTable() {
        CompositeForeignKey cfk = new CompositeForeignKey();
        assertEquals(0, cfk.foreignKeys.size());

        cfk.addForeignKey(new ForeignKey("source", "target", "sA", "tA"));

        try {
            cfk.addForeignKey(new ForeignKey("other", "target", "sB", "tA"));
            fail("Expected IllegalArgumentException to be thrown");
        } catch (IllegalArgumentException e) {
            assertEquals(
                    "A foreign key cannot be added to a composite foreign key with a different source or target table",
                    e.getMessage());
        }
    }

    @Test
    public void addForeignKeyTestDifferentTargetTable() {
        CompositeForeignKey cfk = new CompositeForeignKey();
        assertEquals(0, cfk.foreignKeys.size());

        cfk.addForeignKey(new ForeignKey("source", "target", "sA", "tA"));

        try {
            cfk.addForeignKey(new ForeignKey("source", "others", "sB", "tB"));
            fail("Expected IllegalArgumentException to be thrown");
        } catch (IllegalArgumentException e) {
            assertEquals(
                    "A foreign key cannot be added to a composite foreign key with a different source or target table",
                    e.getMessage());
        }
    }

    @Test
    public void toStringTest() {
        CompositeForeignKey cfk = new CompositeForeignKey();
        assertEquals("CompositeForeignKey{foreignKeys=[], sourceTable='', targetTable=''}", cfk.toString());

        cfk.addForeignKey(new ForeignKey("source", "target", "sA", "tA"));
        assertEquals(
                "CompositeForeignKey{foreignKeys=[ForeignKey{sourceTable='source', targetTable='target', sourceAttribute='sA', targetAttribute='tA'}], sourceTable='source', targetTable='target'}",
                cfk.toString());
    }

}
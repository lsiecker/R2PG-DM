package com.java.r2pgdm;

import java.util.ArrayList;
import java.util.List;

import lombok.Getter;
import lombok.Setter;

/**
 * Represents all foreign keys with the same source and target table
 */
public class CompositeForeignKey {

    @Getter
    @Setter
    List<ForeignKey> foreignKeys; // Collection of foreign keys with the same source and target table

    @Getter
    @Setter
    String sourceTable = ""; // Source table of all contained foreign keys

    @Getter
    @Setter
    String targetTable = ""; // Target table of all contained foreign keys

    public CompositeForeignKey() {
        this.foreignKeys = new ArrayList<>();
    }

    /**
     * Adds a foreign key the this composite foreign key
     * @param fk foreign key to be added
     * @throws IllegalArgumentException if `fk` has a different source or target table than this composite foreign key
     */
    void addForeignKey(ForeignKey fk) {
        // If this is an empty composite foreign key, initialize its source and target table to those of `fk`
        if (sourceTable.equals("")) {
            sourceTable = fk.sourceTable;
        }

        if (targetTable.equals("")) {
            targetTable = fk.targetTable;
        }

        // Check the source and target table constraint
        if (fk.sourceTable.equals(sourceTable) && fk.targetTable.equals(targetTable)) {
            foreignKeys.add(fk);
        } else {
            throw new IllegalArgumentException("A foreign key cannot be added to a composite foreign key with a " +
                    "different source or target table");
        }
    }

    @Override
    public String toString() {
        return "CompositeForeignKey{" +
                "foreignKeys=" + foreignKeys +
                ", sourceTable='" + sourceTable + '\'' +
                ", targetTable='" + targetTable + '\'' +
                '}';
    }
}
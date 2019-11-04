package com.java.r2pgdm;

import lombok.Getter;
import lombok.Setter;

/**
 * Represents a foreign key between two tables
 */
public class ForeignKey {
    @Getter
    @Setter
    String sourceTable; // Name of table that has his foreign key column

    @Getter
    @Setter
    String targetTable; // Name of the table this foreign key references

    @Getter
    @Setter
    String sourceAttribute; // Name of attribute of this foreign key in the source table

    @Getter
    @Setter
    String targetAttribute; // Name of attribute of this forein key in the target table

    public ForeignKey(String st, String tt, String sa, String ta) {
        sourceTable = st;
        targetTable = tt;
        sourceAttribute = sa;
        targetAttribute = ta;
    }

    @Override
    public String toString() {
        return "ForeignKey{" +
                "sourceTable='" + sourceTable + '\'' +
                ", targetTable='" + targetTable + '\'' +
                ", sourceAttribute='" + sourceAttribute + '\'' +
                ", targetAttribute='" + targetAttribute + '\'' +
                '}';
    }
}
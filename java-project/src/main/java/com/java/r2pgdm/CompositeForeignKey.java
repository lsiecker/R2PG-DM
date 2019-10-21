package com.java.r2pgdm;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import lombok.Getter;
import lombok.Setter;

public class CompositeForeignKey {
    @Getter
    @Setter
    public List<ForeignKey> ForeignKeys;

    @Getter
    @Setter
    public String SourceTable = new String();

    @Getter
    @Setter
    public String TargetTable = new String();

    public CompositeForeignKey() {
        this.ForeignKeys = new ArrayList<ForeignKey>();
    }

    public void AddForeignKey(ForeignKey fk) {
        this.ForeignKeys.add(fk);
        if (this.SourceTable.equals(new String())) {
            this.SourceTable = fk.SourceTable;
        }
        if (this.TargetTable.equals(new String())) {
            this.TargetTable = fk.TargetTable;
        }
    }

    @Override
    public String toString() {
        return "CompositeForeignKey{" +
                "ForeignKeys=" + ForeignKeys +
                ", SourceTable='" + SourceTable + '\'' +
                ", TargetTable='" + TargetTable + '\'' +
                '}';
    }
}
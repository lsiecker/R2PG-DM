package com.java.r2pgdm;

import lombok.Getter;
import lombok.Setter;

public class ForeignKey {
    @Getter
    @Setter
    public String SourceTable;
    @Getter
    @Setter
    public String TargetTable;
    @Getter
    @Setter
    public String SourceAttribute;
    @Getter
    @Setter
    public String TargetAttribute;

    public ForeignKey(String st, String tt, String sa, String ta) {
        this.SourceTable = st;
        this.TargetTable = tt;
        this.SourceAttribute = sa;
        this.TargetAttribute = ta;
    }

    @Override
    public String toString() {
        return "ForeignKey{" +
                "SourceTable='" + SourceTable + '\'' +
                ", TargetTable='" + TargetTable + '\'' +
                ", SourceAttribute='" + SourceAttribute + '\'' +
                ", TargetAttribute='" + TargetAttribute + '\'' +
                '}';
    }
}
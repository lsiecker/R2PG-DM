package com.java.r2pgdm;

import java.util.ArrayList;
import java.util.List;

import lombok.Getter;
import lombok.Setter;

public class Column {
    @Getter
    @Setter
    public String SourceRelationName;
    @Getter
    @Setter
    public String SourceAttribute;
    @Getter
    @Setter
    public String TargetRelationName;
    @Getter
    @Setter
    public String TargetAttribute;
    @Getter
    @Setter
    public String Value;

    public Column(String relName, String att, String val, String tRelName, String tAtt) {
        this.SourceRelationName = relName;
        this.SourceAttribute = att;
        this.Value = val;
        this.TargetRelationName = tRelName;
        this.TargetAttribute = tAtt;
    }

    @Override
    public String toString() {
        return "Column{" +
                "SourceRelationName='" + SourceRelationName + '\'' +
                ", SourceAttribute='" + SourceAttribute + '\'' +
                ", TargetRelationName='" + TargetRelationName + '\'' +
                ", TargetAttribute='" + TargetAttribute + '\'' +
                ", Value='" + Value + '\'' +
                '}';
    }
}
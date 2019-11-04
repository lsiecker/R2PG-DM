package com.java.r2pgdm.graph;

import lombok.Getter;
import lombok.Setter;

/**
 * Represents the property of a node in the graph
 */
public class Property {

    @Getter
    @Setter
    public String id; // id of this property's node

    @Getter
    @Setter
    public String key; // Name of this property

    @Getter
    @Setter
    public String value; // value of this property

    public Property(String id, String key, String val) {
        this.id = id;
        this.key = key;
        this.value = val;
    }
}
package com.java.r2pgdm.graph;

import java.util.ArrayList;
import java.util.List;

import lombok.Getter;
import lombok.Setter;

/**
 * Represents a node in the graph
 */
public class Node {

    @Getter
    @Setter
    public String id; // Unique id of this node

    @Getter
    @Setter
    public String label; // Label of this node

    public Node(String id, String label) {
        this.id = id;
        this.label = label;
    }
}
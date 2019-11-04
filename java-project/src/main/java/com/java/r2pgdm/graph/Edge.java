package com.java.r2pgdm.graph;

import lombok.Getter;
import lombok.Setter;

/**
 * Represents an edge in the graph
 */
public class Edge {

    @Getter
    @Setter
    public String id; // Unique id for this edge

    @Getter
    @Setter
    public String sourceId; // id of the source node

    @Getter
    @Setter
    public String targetId; // id of the target node

    @Getter
    @Setter
    public String label; // label of this edge

    public Edge(String id, String src, String tgt, String lbl) {
        this.id = id;
        this.sourceId = src;
        this.targetId = tgt;
        this.label = lbl;
    }
}
package com.java.r2pgdm.graph;

import org.junit.Test;

import static org.junit.Assert.*;

public class EdgeTest {

    @Test
    public void testGettersAndSetters() {
        String id = "edge1";
        String sourceId = "node1";
        String targetId = "node2";
        String label = "edgeLabel";

        Edge edge = new Edge(id, sourceId, targetId, label);

        assertEquals(id, edge.getId());
        assertEquals(sourceId, edge.getSourceId());
        assertEquals(targetId, edge.getTargetId());
        assertEquals(label, edge.getLabel());

        String newId = "edge2";
        String newSourceId = "node3";
        String newTargetId = "node4";
        String newLabel = "newEdgeLabel";

        edge.setId(newId);
        edge.setSourceId(newSourceId);
        edge.setTargetId(newTargetId);
        edge.setLabel(newLabel);

        assertEquals(newId, edge.getId());
        assertEquals(newSourceId, edge.getSourceId());
        assertEquals(newTargetId, edge.getTargetId());
        assertEquals(newLabel, edge.getLabel());
    }

    @Test
    public void testConstructor() {
        String id = "edge1";
        String sourceId = "node1";
        String targetId = "node2";
        String label = "edgeLabel";

        Edge edge = new Edge(id, sourceId, targetId, label);

        assertEquals(id, edge.getId());
        assertEquals(sourceId, edge.getSourceId());
        assertEquals(targetId, edge.getTargetId());
        assertEquals(label, edge.getLabel());
    }
}
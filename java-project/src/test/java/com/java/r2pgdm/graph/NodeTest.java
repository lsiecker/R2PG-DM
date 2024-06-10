package com.java.r2pgdm.graph;

import org.junit.Test;

import static org.junit.Assert.assertEquals;

public class NodeTest {

    @Test
    public void testGetId() {
        Node node = new Node("1", "Node 1");
        assertEquals("1", node.getId());
    }

    @Test
    public void testSetId() {
        Node node = new Node("1", "Node 1");
        node.setId("2");
        assertEquals("2", node.getId());
    }

    @Test
    public void testGetLabel() {
        Node node = new Node("1", "Node 1");
        assertEquals("Node 1", node.getLabel());
    }

    @Test
    public void testSetLabel() {
        Node node = new Node("1", "Node 1");
        node.setLabel("Node 2");
        assertEquals("Node 2", node.getLabel());
    }
}
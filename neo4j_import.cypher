//Create all nodes
LOAD CSV WITH HEADERS FROM "file:///nodes.csv" AS row
WITH row
CALL apoc.create.node([row.label, "Node"], {nodeid: row.nodeid}) yield node
RETURN node;

DROP INDEX node_index IF EXISTS;
CREATE INDEX node_index FOR (nodeid:Node) on nodeid.nodeid;

//Create all edges
LOAD CSV WITH HEADERS FROM "file:///edges.csv" AS row
MATCH (n1:Node {nodeid: row.srcid}), (n2:Node {nodeid: row.tgtid})
CALL apoc.create.relationship(n1, row.label, {edgeid: row.edgeid}, n2) YIELD rel
RETURN rel;

//Create edge properties
LOAD CSV WITH HEADERS FROM "file:///properties.csv" AS row
MATCH (e {edgeid: row.propid})
CALL apoc.create.setRelProperty(e, row.key, row.value) yield rel
return rel;

//Create node properties
LOAD CSV WITH HEADERS FROM "file:///properties.csv" AS row
MATCH (n {nodeid: row.propid})
CALL apoc.create.setProperty(n, row.key, row.value) yield node
return node;
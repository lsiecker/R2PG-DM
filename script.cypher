USING PERIODIC COMMIT
LOAD CSV WITH HEADERS FROM "file:///nodes.csv" AS row
CALL apoc.create.node([row.label], {nodeid: row.nodeid}) yield node
return node;

USING PERIODIC COMMIT
LOAD CSV WITH HEADERS FROM "file:///properties.csv" AS row
MATCH (n {nodeid: row.propid})
CALL apoc.create.setProperty(n, row.key, row.value) yield node
return node;

USING PERIODIC COMMIT
LOAD CSV WITH HEADERS FROM "file:///edges.csv" AS row
MATCH (n1), (n2)
WHERE n1.nodeid = row.srcid
AND n2.nodeid = row.tgtid
CALL apoc.create.relationship(n1, row.label, {edgeid: row.edgeid}, n2) yield rel
return rel;

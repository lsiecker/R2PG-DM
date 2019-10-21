## InputConnection::CreateEdges
input for table Interaction: 
```
CompositeForeignKey{
    ForeignKeys=[
        ForeignKey{
            SourceTable='Interaction', 
            TargetTable='Incident', 
            SourceAttribute='Related_Incident', 
            TargetAttribute='Incident_ID'
        }
    ], 
    SourceTable='Interaction', 
    TargetTable='Incident'
}
```

input for table Incident_Activity
```sql
CompositeForeignKey{
    ForeignKeys=[
        ForeignKey{
            SourceTable='Incident_Activity', 
            TargetTable='Incident',
            SourceAttribute='Incident_ID', 
            TargetAttribute='Incident_ID'
        }
    ], 
    SourceTable='Incident_Activity', 
    TargetTable='Incident'
}
```


One of these compositeforeignkeys exists per source, target table pair.

The first significant step in this method is the following:
```
List<Column> results = JoinFks(cfk, t);
``` 

`results` contains a list of joinable rows, i.e. each element of this list dictates how to join one row from one table 
with one row from another table.

Not sure what this one does: 
```322: int length = results.size() / cfk.ForeignKeys.size();```, but presumably it deals with tables that have multiple 
foreign key colums with the same target table.

### Main problem
The main problem this function has is that it combines data from the input and graph sql databases.

First, from the input connection it retrieves two ids:

```
rId = GetTupleIdFromRelation(curr.SourceRelationName, curr.SourceAttribute, curr.Value);
sId = GetTupleIdFromRelation(curr.TargetRelationName, curr.TargetAttribute, curr.Value);
```
Then, from the output connection (graph sql database) it retrieves
```
List<String> sNodeIds = OutputConnection.JoinNodeAndProperty(curr.SourceRelationName,
                        curr.SourceAttribute, curr.Value);
List<String> tNodeIds = OutputConnection.JoinNodeAndProperty(curr.TargetRelationName,
                        curr.TargetAttribute, curr.Value);
```

In the same order as the queries are shown, the following queries are an example of them:

```
WITH myTable AS(
    SELECT Related_Incident, ROW_NUMBER() OVER (ORDER BY Related_Incident) AS rId FROM "Interaction" 
    GROUP BY Related_Incident
) SELECT rId 
  FROM myTable 
  WHERE Related_Incident='IM0000312';

WITH myTable AS(
    SELECT Incident_ID, ROW_NUMBER() OVER (ORDER BY Incident_ID) AS rId 
    FROM "Incident" GROUP BY Incident_ID
) SELECT rId 
  FROM myTable  
  WHERE Incident_ID='IM0000312';
  
SELECT n.id, n.label, p.pkey, p.pvalue 
FROM node n 
INNER JOIN property p ON n.id = p.id 
    AND p.pvalue='IM0000312' 
    AND p.pkey='Related_Incident' 
    AND n.label='Interaction';
    
SELECT n.id, n.label, p.pkey, p.pvalue FROM node n 
INNER JOIN property p ON n.id = p.id 
    AND p.pvalue='IM0000312' 
    AND p.pkey='Incident_ID' 
    AND n.label='Incident';
```

with the following results: 
* 305
* 251
* 2871, Interaction, Related_Incident, IM0000312
* 2071, Incident, Incident_ID, IM000032

The first query orders the column of the foreign key in the source table and finds the index of the current element in that list.

The second query does the same but for the foregin key column in the target table.

The third query finds the node ids of the nodes from the source table that has a property with the specified value. 

The fourth query does the same but for the target table.

Finally an edge is created between each combination of the results from the third and fourth query. The results of the 
first and second query are only used in creating the identifier for the edge, while the results of the third and fourth 
query are used as properties of the new edge.

## `InputConnection::JoinFks`
This function finds for each foreign key, the values that appear in the table it references. and stores it in the 
following datastructure.

```
{
    SourceRelationName: Name of the input table
    SourceAttribute: Name of the column that is a foreign key
    TargetRelationName: Name of the table that the foreign key references
    TargetAttribute: Name of the column that the foreign key references
    Value: foreign key value
}

```
The following query is used:
```sql
SELECT temp1.Related_Incident FROM "Interaction" AS temp1 
INNER JOIN "Incident" AS temp2  ON temp1.Related_Incident = temp2.Incident_ID;
```
The following output is a subset of what this function produces for the table `Interaction`.
```
Column{SourceRelationName='Interaction', SourceAttribute='Related_Incident', TargetRelationName='Incident', TargetAttribute='Incident_ID', Value='IM0000004'}
Column{SourceRelationName='Interaction', SourceAttribute='Related_Incident', TargetRelationName='Incident', TargetAttribute='Incident_ID', Value='IM0000005'}
Column{SourceRelationName='Interaction', SourceAttribute='Related_Incident', TargetRelationName='Incident', TargetAttribute='Incident_ID', Value='IM0000011'}
Column{SourceRelationName='Interaction', SourceAttribute='Related_Incident', TargetRelationName='Incident', TargetAttribute='Incident_ID', Value='IM0000012'}
Column{SourceRelationName='Interaction', SourceAttribute='Related_Incident', TargetRelationName='Incident', TargetAttribute='Incident_ID', Value='IM0000013'}
Column{SourceRelationName='Interaction', SourceAttribute='Related_Incident', TargetRelationName='Incident', TargetAttribute='Incident_ID', Value='IM0000014'}
```

The same result can be obtained via the following query:
```sqlite
select distinct Related_Incident from Interaction
where Related_Incident IN (
	select Incident_ID from Incident
)
```
or more generally:
```sqlite
select distinct SourceAttribute from SourceRelationName
where sourceAttribute IN (
    select TargetAttribute from TargetRelationName
)
```

(Though the original query isn't the problem)

The datastructure could be changed to the following more efficient data structure
```sql
{
    SourceRelationName: String
    SourceAttribute: String
    TargetRelationName: String
    TargetAttribute: String
    Values: Collection<Object>
}
```

## InputConnection::GetTupleIdFromRelation

example query:
```sql
WITH myTable AS(
	SELECT Related_Incident, ROW_NUMBER() OVER (ORDER BY Related_Incident) AS rId 
	FROM "Interaction" GROUP BY Related_Incident
)
SELECT rId
FROM myTable 
WHERE Related_Incident='IM0000004';
```

could instead fire this one once:
```sql
WITH myTable AS(
	SELECT Related_Incident, ROW_NUMBER() OVER (ORDER BY Related_Incident) AS rId 
	FROM "Interaction" GROUP BY Related_Incident
)
SELECT rId, Related_Incident
FROM myTable 
```

## OutputConnection::JoinNodeAndProperty
example query
```sql
SELECT n.id, n.label, p.pkey, p.pvalue 
FROM node n 
INNER JOIN property p 
    ON n.id = p.id 
    AND p.pvalue='IM0000217' 
    AND p.pkey='Related_Incident' 
    AND n.label='Interaction';
```

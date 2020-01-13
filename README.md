# R2PG-DM

This is an application for constructing property graphs from relational databases. 

## Setup config.ini
In order to use the application, a config.ini file is necessary for specifying the input databases connections. The format is the following:

```
[input]
connectionString=
driver=sqlite
```

Where the *connectionString* represents the jdbc connection string format as defined here: https://vladmihalcea.com/jdbc-driver-connection-url-strings/

The application has been tested with sqlite.

## Neo4j

The application will generate the graph into 3 CSV files in the root folder called: **nodes.csv**, **edges.csv** and **properties.csv**. You can use these files as input for a Neo4j instance by running the script presented in file **script.cypher** located in this repository. 

For more information on how to install and setup a Neo4j instance refer to this website: https://neo4j.com/download/
For more information on where to copy/paste the csv files, please see Section 2 in the following tutorial: https://neo4j.com/developer/desktop-csv-import/ (ignore the cypher (LOAD) queries in this article and use the queries from script.cypher instead.)

Use Neo4j instance for visualization. Need plugin APOC installed (dynamic labels) -> https://neo4j-contrib.github.io/neo4j-apoc-procedures/


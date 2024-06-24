[![GitHub Release](https://img.shields.io/github/release/lsiecker/R2PG-DM.svg?style=flat)]()
![GitHub last commit](https://img.shields.io/github/last-commit/lsiecker/r2pg-dm)
![GitHub commit activity](https://img.shields.io/github/commit-activity/w/lsiecker/r2pg-dm)
[![GitHub commits since](https://img.shields.io/github/commits-since/lsiecker/R2PG-DM/latest)]()
[![Issues](https://img.shields.io/github/issues-raw/lsiecker/R2PG-DM.svg?maxAge=25000)](https://github.com/lsiecker/R2PG-DM/issues)
[![GitHub pull requests](https://img.shields.io/github/issues-pr/cdnjs/cdnjs.svg?style=flat)]()
![GitHub Actions Workflow Status](https://img.shields.io/github/actions/workflow/status/lsiecker/r2pg-dm/maven.yml)

![MicrosoftSQLServer](https://img.shields.io/badge/Microsoft%20SQL%20Server-CC2927?style=for-the-badge&logo=microsoft%20sql%20server&logoColor=white)
![MySQL](https://img.shields.io/badge/mysql-4479A1.svg?style=for-the-badge&logo=mysql&logoColor=white) 
<!-- ![SQLite](https://img.shields.io/badge/sqlite-%2307405e.svg?style=for-the-badge&logo=sqlite&logoColor=white) 
![Postgres](https://img.shields.io/badge/postgres-%23316192.svg?style=for-the-badge&logo=postgresql&logoColor=white) -->


# R2PG-DM

R2PG-DM is a powerful tool that allows you to construct property graphs from relational databases. 

## Table of Contents

1. [Features](#features)
2. [Installation](#installation)
3. [Configuration](#configuration)
4. [Usage](#usage)
5. [Neo4j Integration](#neo4j-integration)
6. [Troubleshooting](#troubleshooting)
7. [Contributing](#contributing)

## Features

- Convert relational databases into property graphs
- Support for MySQL and Microsoft SQL Server databases
- Generate CSV files for Neo4j graph database
- Generate schema following PG-Schema language

## Installation

To install R2PG-DM, follow these steps:

1. Clone the repository: `git clone https://github.com/lsiecker/r2pg-dm.git`
2. Navigate into the project directory: `cd r2pg-dm`
3. Build the R2PG-DM using Maven: `mvn clean build`

## Configuration

Before using R2PG-DM, you need to set up a `config.ini` file to specify the input database connections. Here's the format:

```
[input]
connectionString=jdbc:DRIVER://IP_ADDRESS:PORT/DATABASE_NAME?user=USER&password=PASSWORD
database=DATABASE_NAME
driver=DRIVER

[output]
connectionString=jdbc:DRIVER://IP_ADDRESS:PORT/DATABASE_NAME?user=USER&password=PASSWORD
database=DATABASE_NAME
driver=DRIVER

[mapping]
tables=true
views=true
schema=dbo
tableNames=*
```

The connectionString should be in the JDBC connection string format. You can find more information about this format [here]( https://vladmihalcea.com/jdbc-driver-connection-url-strings/). Furthermore there are some settings regarding the mapping. Boolean values for tables and views determine wheter or not to take into account these table types. Keep in mind that views do not include foreign key information, only column information. Schema is the schema in the source database that needs to be mapped. tableNames is a parameter that can be filled with several table/view names to specify that mapping. The names should be seperated with a comma **not** in quotes: `country,countrylanguage,city`.

## Usage
To use R2PG-DM, follow these steps:

1. Set up your `config.ini` file as described in the [Configuration](#configuration) section.
2. Run the application
3. View the output in the output folder and in your target database tables. The output consists of 
- `nodes.csv`, `edges.csv`, `properties.csv`: The property graph divided in the different information types.
- `combined.json`: All information from the nodes, edges and properties combined in one json to be imported by AvantGraph. 
- `schema.pgs`: Schema following PG-Schema language.

## Neo4j Integration

R2PG-DM generates three CSV files: `nodes.csv`, `edges.csv` and `properties.csv`. You can use these files as input for a Neo4j instance by running the script in the `script.cypher` located in this repository. 

For more information on how to install and setup a Neo4j instance refer to the [Neo4j download page](https://neo4j.com/download/)
For information on where to place the CSV files, see Section 2 of this [Neo4j tutorial](https://neo4j.com/developer/desktop-csv-import/). During this tutorial you can ignore the cypher (LOAD) queries and use the queries from script.cypher instead.

To use a Neo4j instance for visualization, you need the [APOC plugin](https://neo4j-contrib.github.io/neo4j-apoc-procedures/) installed (dynamic labels).

## Troubleshooting
If you encounter any issues while using R2PG-DM, please check the Issues page of this repository. If you don't find a solution there, feel free to open a new issue.

## Contributing
We welcome contributions to R2PG-DM! If you'd like to contribute, please fork the repository, make your changes, and open a pull request.
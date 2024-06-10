# R2PG-DM

R2PG-DM is a powerful tool that allows you to construct property graphs from relational databases. This application is designed to be flexible, efficient, and easy to use.

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

## Installation

To install R2PG-DM, follow these steps:

1. Clone the repository: `git clone https://github.com/lsiecker/r2pg-dm.git`
2. Navigate into the project directory: `cd r2pg-dm`
3. Build the R2PG-DM using Maven: `mvn clean build`

## Configuration

Before using R2PG-DM, you need to set up a `config.ini` file to specify the input database connections. Here's the format:

```
[input]
connectionString=
driver=sqlite
```

The connectionString should be in the JDBC connection string format. You can find more information about this format [here]( https://vladmihalcea.com/jdbc-driver-connection-url-strings/).

## Usage
To use R2PG-DM, follow these steps:

1. Set up your `config.ini` file as described in the [Configuration](#configuration) section.
2. Run the application

## Neo4j Integration

R2PG-DM generates three CSV files: `nodes.csv`, `edges.csv` and `properties.csv`. You can use these files as input for a Neo4j instance by running the script in the `script.cypher` located in this repository. 

For more information on how to install and setup a Neo4j instance refer to the [Neo4j download page](https://neo4j.com/download/)
For information on where to place the CSV files, see Section 2 of this [Neo4j tutorial](https://neo4j.com/developer/desktop-csv-import/). During this tutorial you can ignore the cypher (LOAD) queries and use the queries from script.cypher instead.

To use a Neo4j instance for visualization, you need the [APOC plugin](https://neo4j-contrib.github.io/neo4j-apoc-procedures/) installed (dynamic labels).

## Troubleshooting
If you encounter any issues while using R2PG-DM, please check the Issues page of this repository. If you don't find a solution there, feel free to open a new issue.

## Contributing
We welcome contributions to R2PG-DM! If you'd like to contribute, please fork the repository, make your changes, and open a pull request.
package com.java.r2pgdm.schema;

import lombok.Getter;
import lombok.Setter;

import java.io.File;
import java.io.IOException;
import java.sql.DatabaseMetaData;
import java.sql.ResultSet;
import java.util.List;
import java.util.Map;

import org.apache.commons.io.FileUtils;

import com.java.r2pgdm.CompositeForeignKey;
import com.java.r2pgdm.InputConnection;

/**
 * The `PGSchema` class is responsible for generating the schema of the target
 */
public class PGSchema {

    // The metadata of a relational database should be the input of the class

    @Getter
    @Setter
    String schemaName;

    @Getter
    @Setter
    DatabaseMetaData metadata;

    @Getter
    @Setter
    InputConnection targetDatabase;

    @Getter
    @Setter
    List<String> tables;

    @Getter
    @Setter
    Map<String, List<CompositeForeignKey>> joinTables;

    @Getter
    @Setter
    List<CompositeForeignKey> compositeForeignKeys;

    @Getter
    @Setter
    String schema;

    /**
     * Constructs a new `PGSchema` object with the specified schema name, database
     * metadata, and target database connection.
     * 
     * @param schemaName     The name of the schema.
     * @param metadata       The metadata of the database.
     * @param targetDatabase The connection to the target database.
     * @param joinTables
     * @param tables
     */
    public PGSchema(String schemaName, DatabaseMetaData metadata, InputConnection targetDatabase, List<String> tables,
            Map<String, List<CompositeForeignKey>> joinTables, List<CompositeForeignKey> fks) {
        this.schemaName = schemaName;
        this.metadata = metadata;
        this.targetDatabase = targetDatabase;
        this.tables = tables;
        this.joinTables = joinTables;
        this.compositeForeignKeys = fks;

        createSchema();
    }

    private void createSchema() {
        schema = createType("GraphType");
        schema += EOF();

        // System.out.println("\nOutput - Schema:\n");
        // System.out.println(schema);
    }

    private String SP() {
        return " ";
    }

    private String createType(String typeName) {
        switch (typeName) {
            case "NodeType":
                return createNodeType(typeName);
            case "EdgeType":
                return createEdgeType(typeName);
            case "GraphType":
                return createGraphType(this.schemaName);
            default:
                return "";
        }
    }

    private String createNodeType(String nodeTypeName) {
        return "CREATE NODE TYPE " + isAbstract(false) + nodeTypeName;
    }

    private String createEdgeType(String edgeTypeName) {
        return "CREATE EDGE TYPE " + isAbstract(false) + edgeTypeName;
    }

    private String createGraphType(String graphTypeName) {
        return "CREATE GRAPH TYPE " + getGraphType(graphTypeName);
    }

    private String getGraphType(String graphTypeName) {
        return graphTypeName + "GraphType" + SP() + getTypeForm(false) + SP() + getGraphTypeDefinition();
    }

    private String getNodeType(String nodeTypeName) {
        return SP() + "(" + nodeTypeName + "Type" + getNodeLabelPropertySpec(nodeTypeName) + ")";
    }

    private String getEdgeType(String edgeTypeName, String sourceNodeType, String targetNodeType) {
        return SP() + "(:" + sourceNodeType + "Type)-[" + edgeTypeName + "Type" + getEdgeLabelPropertySpec(edgeTypeName)
                + "]->(:" + targetNodeType + "Type)";
    }

    private String getNodeLabelPropertySpec(String TypeName) {
        return ":" + SP() + TypeName + SP() + isOpen(false) + getProperties(TypeName);

    }

    private String getEdgeLabelPropertySpec(String TypeName) {
        if (this.joinTables.containsKey(TypeName)) {
            return ":" + SP() + TypeName + SP() + isOpen(false) + getProperties(TypeName);
        } else {
            return ":" + SP() + TypeName;
        }

    }

    private String getProperties(String nodeTypeName) {
        try {
            ResultSet rs = metadata.getColumns(null, null, nodeTypeName, null);
            StringBuilder sb = new StringBuilder();

            while (rs.next()) {
                String columnName = rs.getString("COLUMN_NAME");
                String columnType = rs.getString("TYPE_NAME");

                // Capitalize columntype and make it the GQL standard types
                columnType = columnType.toUpperCase();

                sb.append(columnName).append(SP()).append(columnType).append(",").append(SP());
            }

            // Remove the last comma and space
            sb.delete(sb.length() - 2, sb.length());

            return "{" + sb.toString() + "}";
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    private String isOpen(Boolean bool) {
        if (bool) {
            return "(OPEN)?" + SP();
        } else {
            return "";
        }
    }

    private String getTypeForm(Boolean Strict) {
        if (Strict) {
            return "STRICT";
        } else {
            return "LOOSE";
        }
    }

    private String isAbstract(Boolean bool) {
        if (bool) {
            return "(ABSTRACT)?" + SP();
        } else {
            return "";
        }
    }

    private String getGraphTypeDefinition() {

        // String builder
        StringBuilder sb = new StringBuilder();

        for (String table : tables) {
            sb.append(SP()).append(getNodeType(table)).append(",\n");
        }

        for (String table : joinTables.keySet()) {
            List<CompositeForeignKey> compositeForeignKeys = joinTables.get(table);
            // Get the targetTables from both compositeForeignKeys and link them with an
            // edge, where the edge is called the sourceTable and has properties of the
            // source table
            sb.append(SP())
                    .append(getEdgeType(compositeForeignKeys.get(0).getSourceTable(),
                            compositeForeignKeys.get(0).getTargetTable(), compositeForeignKeys.get(1).getTargetTable()))
                    .append(",\n");
            sb.append(SP())
                    .append(getEdgeType(compositeForeignKeys.get(1).getSourceTable(),
                            compositeForeignKeys.get(1).getTargetTable(), compositeForeignKeys.get(0).getTargetTable()))
                    .append(",\n");
        }

        // Loop through all foreign keys
        for (CompositeForeignKey compositeForeignKey : this.compositeForeignKeys) {
            sb.append(SP())
                    .append(getEdgeType(
                            compositeForeignKey.getSourceTable() + "-" + compositeForeignKey.getTargetTable(),
                            compositeForeignKey.getSourceTable(),
                            compositeForeignKey.getTargetTable()))
                    .append(",\n");
        }

        // Remove the last comma
        sb.deleteCharAt(sb.length() - 2);

        return "{\n" + sb.toString() + "}";
    }

    private String EOF() {
        return "\n";
    }

    public void exportGraph(String filePath) {
        // Export schema to file path with .pgs extension
        try {
            FileUtils.writeStringToFile(new File(filePath + "\\schema.pgs"), schema, "UTF-8");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

}

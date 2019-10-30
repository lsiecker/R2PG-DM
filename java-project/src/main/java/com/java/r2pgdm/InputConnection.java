package com.java.r2pgdm;

import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.*;

import com.java.r2pgdm.graph.Edge;
import com.java.r2pgdm.graph.Node;
import com.java.r2pgdm.graph.Property;
import org.apache.commons.lang3.tuple.ImmutablePair;
import org.apache.commons.lang3.tuple.Pair;

public class InputConnection {

    private static final String COLUMN_NAME = "COLUMN_NAME";
    char _Quoting = '`';
    private static final String[] TYPES = new String[]{"TABLE"};
    Connection _con;
    DatabaseMetaData _metaData;
    String _schema;

    public InputConnection(String url, String schema, String driver) {
        this._schema = schema;
        if (!driver.equals("mysql")) {
            this._Quoting = '"';
        }
        Connect(url);
        GetMetaData();
    }

    private void Connect(String url) {
        try {
            _con = DriverManager.getConnection(url);
            _con.setAutoCommit(false);
            System.out.println("Connection for input established.");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    private void GetMetaData() {
        try {
            _metaData = _con.getMetaData();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public List<String> GetTableName() {
        List<String> tables = new ArrayList<String>();
        try {
            ResultSet rs = _metaData.getTables(_schema, null, "%", TYPES);
            while (rs.next()) {
                String name = rs.getString(3);
                String[] forbidden = {"node", "property", "edge"};
                if (!Arrays.asList(forbidden).contains(name)) {
                    tables.add(name);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            return tables;
        }
    }

    public List<CompositeForeignKey> GetForeignKeys(String tableName) {
        List<CompositeForeignKey> Fks = new ArrayList<CompositeForeignKey>();
        try {
            try (ResultSet foreignKeys = _metaData.getImportedKeys(_schema, null, tableName)) {
                while (foreignKeys.next()) {
                    boolean flag = false;
                    String st = foreignKeys.getString("FKTABLE_NAME");
                    String tt = foreignKeys.getString("PKTABLE_NAME");
                    String sa = foreignKeys.getString("FKCOLUMN_NAME");
                    String ta = foreignKeys.getString("PKCOLUMN_NAME");
                    Integer keySeq = Integer.parseInt(foreignKeys.getString("KEY_SEQ"));

                    ForeignKey tempFk = new ForeignKey(st, tt, sa, ta);

                    for (int i = 0; i < Fks.size() && !flag; i++) {
                        CompositeForeignKey currentFk = Fks.get(i);
                        if (keySeq > 1) {
                            currentFk.AddForeignKey(tempFk);
                            flag = true;
                        }
                    }

                    if (!flag) {
                        CompositeForeignKey cfk = new CompositeForeignKey();
                        cfk.AddForeignKey(tempFk);
                        Fks.add(cfk);
                    }
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            return Fks;
        }
    }

    public List<String> GetColumns(String relName) {
        List<String> list = new ArrayList<>();

        try {
            ResultSet rs = _metaData.getColumns(_schema, null, relName, null);
            while (rs.next()) {
                String col = rs.getString(COLUMN_NAME);
                list.add(col);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            return list;
        }
    }

    // #region Helpers
    private Integer GetTupleIdFromRelation(String relName, String val, String key) {
        StringBuilder sqlSB = new StringBuilder("WITH myTable AS");
        sqlSB.append("(");
        sqlSB.append("SELECT ".concat(val).concat(", ROW_NUMBER() OVER (ORDER BY ").concat(val).concat(") AS rId"));
        sqlSB.append(" FROM ".concat(Character.toString(this._Quoting)).concat(relName)
                .concat(Character.toString(this._Quoting)));
        sqlSB.append(" GROUP BY ".concat(val));
        sqlSB.append(")");
        sqlSB.append("SELECT rId FROM myTable WHERE ".concat(val).concat("='").concat(key).concat("';"));

        String sql = sqlSB.toString();

        try {
            Statement stmt = _con.createStatement();
            ResultSet values = stmt.executeQuery(sql);
            while (values.next()) {
                if (values.getRow() == 1) {
                    return values.getInt(1);
                }
            }
            return null;
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println(sql);
            return null;
        }
    }

    private Pair<String, Node> CreateNode(ResultSet values, ResultSetMetaData valuesMd, String relName) {
        try {
            int columns = valuesMd.getColumnCount();
            Integer rId = values.getInt(columns);
            String currIdentifier = Identifier.id(Optional.of(rId), Optional.of(relName), null, null, null, null, null)
                    .toString();
            Node n = new Node(currIdentifier, relName);
            return new ImmutablePair<>(currIdentifier, n);
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }

    private ArrayList<Property> CreateProperty(ResultSet values, ResultSetMetaData valuesMd, String currIdentifier) {
        return OutputConnection.createPropertyRow(values, valuesMd, currIdentifier);
    }

    // #endregion
    public void CreateNodesAndProperties(String relName) {
        List<String> cols = GetColumns(relName);
        StringBuilder sqlSB = new StringBuilder("SELECT ");

        //cols = cols.stream().map(InputConnection::addApostrophes).collect(Collectors.toList());

        cols.stream().forEach(c -> {
            sqlSB.append(c).append(",");
        });

        sqlSB.append(" ROW_NUMBER() OVER (ORDER BY (".concat(cols.get(0)).concat(")) AS rId FROM "));
        sqlSB.append(Character.toString(_Quoting).concat(relName).concat(Character.toString(_Quoting)));
        sqlSB.append(" GROUP BY ");

        cols.stream().forEach(c -> {
            sqlSB.append(c).append(",");
        });
        sqlSB.setLength(sqlSB.length() - 1);
        sqlSB.append(";");

        String sql = sqlSB.toString();
        try {
            PreparedStatement stmt = _con.prepareStatement(sql, ResultSet.TYPE_FORWARD_ONLY,
                    ResultSet.CONCUR_READ_ONLY);
            stmt.setFetchSize(500);
            ResultSet values = stmt.executeQuery();
            ResultSetMetaData valuesMd = values.getMetaData();

            int count = 0;
            int batchSize = 1000;

            ArrayList<Node> nodes = new ArrayList<>();
            ArrayList<Property> properties = new ArrayList<>();

            while (values.next()) {
                Pair<String, Node> node = CreateNode(values, valuesMd, relName);
                if (node != null) {
                    nodes.add(node.getRight());
                    properties.addAll(CreateProperty(values, valuesMd, node.getLeft()));

                    if (count >= batchSize && count % batchSize == 0) {
                        OutputConnection.InsertNodeRows(nodes);
                        OutputConnection.insertPropertyRow(properties);
                        nodes.clear();
                        properties.clear();
                        System.out.println("Created " + count + " nodes with properties for table " + relName);
                    }
                    count++;
                }
            }

            if (!nodes.isEmpty() || !properties.isEmpty()) {
                OutputConnection.InsertNodeRows(nodes);
                OutputConnection.insertPropertyRow(properties);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println(sql);
        }
    }

    private String joinableColumnsQuery(CompositeForeignKey cfk, String t) {
        String sqlSel = "WITH joinableColumns as (SELECT DISTINCT ";
        String sqlWhe = " ON ";

        for (int i = 0; i < cfk.ForeignKeys.size(); i++) {
            ForeignKey fk = cfk.ForeignKeys.get(i);
            sqlSel = sqlSel.concat("sourceTable.").concat(fk.SourceAttribute).concat(",");
            sqlWhe = sqlWhe.concat("sourceTable.").concat(fk.SourceAttribute).concat(" = ").concat("targetTable.")
                    .concat(fk.TargetAttribute).concat(" AND ");
        }

        sqlSel = sqlSel.substring(0, sqlSel.length() - 1);
        sqlWhe = sqlWhe.substring(0, sqlWhe.length() - 5);

        String sql = sqlSel.concat(" FROM ").concat(Character.toString(_Quoting)).concat(cfk.SourceTable)
                .concat(Character.toString(_Quoting)).concat(" AS sourceTable INNER JOIN ")
                .concat(Character.toString(_Quoting)).concat(cfk.TargetTable).concat(Character.toString(_Quoting))
                .concat(" AS targetTable ").concat(sqlWhe).concat(")");

        return sql;
    }

    private String sourceNodeQuery(CompositeForeignKey cfk, String t) {
        String sql = "sourceNodes as (SELECT n.id, p.pkey, p.pvalue FROM node n INNER JOIN property p on " +
                "n.id = p.id AND n.label = '" + cfk.SourceTable + "' AND (";

        for (int i = 0; i < cfk.ForeignKeys.size(); i++) {
            ForeignKey fk = cfk.ForeignKeys.get(i);
            if (i > 0) {
                sql = sql.concat(" OR ");
            }
            sql = sql.concat("p.pkey = '").concat(fk.SourceAttribute).concat("'");
        }
        sql = sql.concat(("))"));
        return sql;
    }

    private String targetNodeQuery(CompositeForeignKey cfk, String t) {
        String sql = "targetNodes as (SELECT n.id, p.pkey, p.pvalue FROM node n INNER JOIN property p on " +
                "n.id = p.id AND n.label = '" + cfk.TargetTable + "' AND (";

        for (int i = 0; i < cfk.ForeignKeys.size(); i++) {
            ForeignKey fk = cfk.ForeignKeys.get(i);
            if (i > 0) {
                sql = sql.concat(" OR ");
            }
            sql = sql.concat("p.pkey = '").concat(fk.TargetAttribute).concat("'");
        }
        sql = sql.concat(("))"));
        return sql;
    }

    private String pivotedSourceNodeQuery(CompositeForeignKey cfk, String t) {
        String sql = "pivotedSourceNodes as (SELECT id as sourceId";
        for (int i = 0; i < cfk.ForeignKeys.size(); i++) {
            ForeignKey fk = cfk.ForeignKeys.get(i);
            sql = sql.concat(", MAX(CASE WHEN pkey='")
                    .concat(fk.SourceAttribute)
                    .concat("' THEN pvalue END) ")
                    .concat(fk.SourceAttribute);
        }
        return sql.concat(" FROM sourceNodes s GROUP BY s.id)");
    }

    private String pivotedTargetNodeQuery(CompositeForeignKey cfk, String t) {
        String sql = "pivotedTargetNodes as (SELECT id as targetId";
        for (int i = 0; i < cfk.ForeignKeys.size(); i++) {
            ForeignKey fk = cfk.ForeignKeys.get(i);
            sql = sql.concat(", MAX(CASE WHEN pkey='")
                    .concat(fk.TargetAttribute)
                    .concat("' THEN pvalue END) ")
                    .concat(fk.TargetAttribute);
        }
        return sql.concat(" FROM TargetNodes s GROUP BY s.id)");
    }

    private String joinedSourceNodesQuery(CompositeForeignKey cfk, String t) {
        String sql = "joinedSourceNodes as ( SELECT s.sourceId";

        for (int i = 0; i < cfk.ForeignKeys.size(); i++) {
            ForeignKey fk = cfk.ForeignKeys.get(i);
            sql = sql.concat(", s.").concat(fk.SourceAttribute);
        }
        sql = sql.concat(" FROM pivotedSourceNodes s INNER JOIN joinableColumns j ON ");
        for (int i = 0; i < cfk.ForeignKeys.size(); i++) {
            ForeignKey fk = cfk.ForeignKeys.get(i);
            if (i > 0) {
                sql = sql.concat(" AND ");
            }
            sql = sql.concat("s.")
                    .concat(fk.SourceAttribute)
                    .concat(" = j.")
                    .concat("j.")
                    .concat(fk.SourceAttribute);
        }
        return sql.concat(")");
    }

    private String finalEdgeJoinString(CompositeForeignKey cfk, String t) {
        String sql = "SELECT s.sourceId, t.targetId FROM joinedSourceNodes s LEFT JOIN pivotedTargetNodes t ON ";
        for (int i = 0; i < cfk.ForeignKeys.size(); i++) {
            ForeignKey fk = cfk.ForeignKeys.get(i);
            if (i > 0) {
                sql = sql.concat(" AND ");
            }
            sql = sql.concat("s.")
                    .concat(fk.SourceAttribute)
                    .concat(" = ")
                    .concat("t.")
                    .concat(fk.TargetAttribute);
        }

        return sql;
    }

    public void createEdges(CompositeForeignKey cfk, String t) {
        String sql = "";

        sql = sql.concat(joinableColumnsQuery(cfk, t))
                .concat(", ")
                .concat(sourceNodeQuery(cfk, t))
                .concat(", ")
                .concat(targetNodeQuery(cfk, t))
                .concat(", ")
                .concat(pivotedSourceNodeQuery(cfk, t))
                .concat(", ")
                .concat(pivotedTargetNodeQuery(cfk, t))
                .concat(", ")
                .concat(joinedSourceNodesQuery(cfk, t))
                .concat(finalEdgeJoinString(cfk, t));

        try {
            ResultSet rs = _con.createStatement().executeQuery(sql);

            ArrayList<Edge> edges = new ArrayList<>();
            int count = 0;
            int batchSize = 1000;
            System.out.println("creating edges for table " + t);

            while (rs.next()) {
                Integer id = Identifier.id(null, Optional.of(cfk.SourceTable), null,
                        null, Optional.of(cfk.TargetTable), null, null);
                String sNodeId = rs.getString("sourceId");
                String tNodeId = rs.getString("targetId");

                Edge e = new Edge(id.toString(), sNodeId, tNodeId, cfk.SourceTable.concat("-").concat(cfk.TargetTable));
                edges.add(e);
                count++;

                if (edges.size() >= batchSize) {
                    OutputConnection.InsertEdgeRows(edges);
                    System.out.println("Added " + count + " Edges for table " + t);

                    edges.clear();
                }
            }

            if (!edges.isEmpty()) {
                OutputConnection.InsertEdgeRows(edges);
            }
        } catch (SQLException e) {
            System.out.println(sql);
            e.printStackTrace();
        }
    }
}
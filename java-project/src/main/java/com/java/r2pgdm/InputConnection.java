package com.java.r2pgdm;

import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Optional;

import com.java.r2pgdm.graph.Edge;
import com.java.r2pgdm.graph.Node;
import com.java.r2pgdm.graph.Property;
import org.apache.commons.lang3.tuple.ImmutablePair;
import org.apache.commons.lang3.tuple.Pair;

public class InputConnection {

    private static final String COLUMN_NAME = "COLUMN_NAME";
    private char _Quoting = '`';
    private static final String[] TYPES = new String[] { "TABLE" };
    private Connection _con;
    private DatabaseMetaData _metaData;
    private String _schema;

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
                tables.add(rs.getString(3));
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
        System.out.println(sql);
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

    private List<Column> JoinFks(CompositeForeignKey cfk, String t) {
        String sqlSel = "SELECT ";
        String sqlWhe = " ON ";

        for (int i = 0; i < cfk.ForeignKeys.size(); i++) {
            ForeignKey fk = cfk.ForeignKeys.get(i);
            sqlSel = sqlSel.concat("temp1.").concat(fk.SourceAttribute).concat(",");
            sqlWhe = sqlWhe.concat("temp1.").concat(fk.SourceAttribute).concat(" = ").concat("temp2.")
                    .concat(fk.TargetAttribute).concat(" AND ");
        }

        sqlSel = sqlSel.substring(0, sqlSel.length() - 1);
        sqlWhe = sqlWhe.substring(0, sqlWhe.length() - 5);
        String sql = sqlSel.concat(" FROM ").concat(Character.toString(_Quoting)).concat(cfk.SourceTable)
                .concat(Character.toString(_Quoting)).concat(" AS temp1 INNER JOIN ")
                .concat(Character.toString(_Quoting)).concat(cfk.TargetTable).concat(Character.toString(_Quoting))
                .concat(" AS temp2 ").concat(sqlWhe).concat(";");

        try {
            Statement stmt = _con.createStatement();
            ResultSet values = stmt.executeQuery(sql);

            ResultSetMetaData valuesMd = values.getMetaData();
            List<Column> local = new ArrayList<>();
            // Join and create columns for each tuple. Column represents one fk with value.
            // (no duplicates allowed.)

            long start = System.currentTimeMillis();
            long count = 0;
            int printBatchSize = 25000;

            while (values.next()) {
                int cols = valuesMd.getColumnCount();
                for (int i = 1; i <= cols; i++) {
                    String currentVal = values.getString(i);
                    String relName = cfk.SourceTable;
                    ForeignKey currFk = cfk.ForeignKeys.get(i - 1);
                    Column newCol = new Column(relName, valuesMd.getColumnLabel(i), currentVal, currFk.TargetTable,
                            currFk.TargetAttribute);
                    Optional<Column> checkExists = local.stream()
                            .filter(c -> c.SourceAttribute.equals(newCol.SourceAttribute)
                                    && c.SourceRelationName.equals(newCol.SourceRelationName)
                                    && c.TargetAttribute.equals(newCol.TargetAttribute)
                                    && c.TargetRelationName.equals(newCol.TargetRelationName)
                                    && c.Value.equals(newCol.Value))
                            .findFirst();
                    if (!checkExists.isPresent()) {
                        local.add(newCol);
                    }
                }
                count++;
                if (count >= printBatchSize && count % printBatchSize == 0)
                    System.out.println(count + " foreign keys joined for table " + t);
            }
            return local;
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
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println(sql);
        }
    }

    public void CreateEdges(CompositeForeignKey cfk, String t) {
        FileWriter fileWriter = null;
        try {
            fileWriter = new FileWriter("C:\\Users\\Jamiro.Leander\\Documents\\git\\Thesis\\MT-Code\\BPIC14\\Output\\" + "edgesLog-"+System.currentTimeMillis()+".txt");
        } catch (IOException e) {
            e.printStackTrace();
        }
        PrintWriter printWriter = new PrintWriter(fileWriter);

        try {
            List<Column> results = JoinFks(cfk, t);
            List<String> fksR = new ArrayList<>();
            List<String> fksS = new ArrayList<>();

//            printWriter.println("cfk foreginkeys size: " + cfk.ForeignKeys.size());
//            printWriter.println("results size: " + results.size());

//            for (Column r : results) {
//                printWriter.println(r);
//            }

//            System.out.println("Joined foreign keys for table " + t);

//            printWriter.println("Writing foreignkeys");
            // Create set of foreign keys
            for (int i = 0; i < cfk.ForeignKeys.size(); i++) {
                ForeignKey fk = cfk.ForeignKeys.get(i);
                fksR.add(fk.SourceAttribute);
                fksS.add(fk.TargetAttribute);
                //printWriter.println(fk);
            }

            Integer rId = -1, sId = -1;

            // Create edges here: (take into consideration composed Fks (size of results /
            // size of foreign keys composing the Composed fk))
            int length = results.size() / cfk.ForeignKeys.size();

            ArrayList<Edge> edges = new ArrayList<>();
            int count = 0;
            int batchSize = 10;
            System.out.println("creating edges for table " + t);

            for (int z = 0; z < length; z++) {
                Column curr = results.get(z);
                // Get tuple ids.
                rId = GetTupleIdFromRelation(curr.SourceRelationName, curr.SourceAttribute, curr.Value);
                sId = GetTupleIdFromRelation(curr.TargetRelationName, curr.TargetAttribute, curr.Value);
                if (rId == -1 || sId == -1) {
                    throw new NullPointerException("rId or sId is -1.");
                }

                long start = System.currentTimeMillis();
                // for each value -> get the node ids of the nodes with label
                // cfk.SourceTable/cfk.TargetTable
                // and has a property value = curr.Value
                List<String> sNodeIds = OutputConnection.JoinNodeAndProperty(curr.SourceRelationName,
                        curr.SourceAttribute, curr.Value);
                List<String> tNodeIds = OutputConnection.JoinNodeAndProperty(curr.TargetRelationName,
                        curr.TargetAttribute, curr.Value);


                if (sNodeIds.size() > 0 && tNodeIds.size() > 0)
                // For all ids obtained -> create edge from all source ids to all target ids.
                for (int i = 0; i < sNodeIds.size(); i++) {
                    String sNodeId = sNodeIds.get(i);
                    for (int j = 0; j < tNodeIds.size(); j++) {
                        Integer id = Identifier.id(Optional.of(rId), Optional.of(cfk.SourceTable), null,
                                Optional.of(sId), Optional.of(cfk.TargetTable), Optional.of(fksR), Optional.of(fksS));
                        String tNodeId = tNodeIds.get(j);
                        Edge e = new Edge(id.toString(), sNodeId, tNodeId, cfk.SourceTable.concat("-").concat(cfk.TargetTable));
                        edges.add(e);
                        count++;

                        if (edges.size() >= batchSize){
                            OutputConnection.InsertEdgeRows(edges);
                            System.out.println("Added " + count + " Edges for table " + t);

                            edges.clear();
                        }
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        printWriter.close();
    }
}

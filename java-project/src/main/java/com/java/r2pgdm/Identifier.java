package com.java.r2pgdm;

import java.util.List;
import java.util.Optional;
import java.util.concurrent.atomic.AtomicInteger;

import lombok.Getter;
import lombok.Setter;

public class Identifier {
    @Getter
    @Setter
    private static AtomicInteger GlobalID = new AtomicInteger(1);

    public static Integer id(Optional<Integer> rIdR, Optional<String> labelR, Optional<String> att,
            Optional<Integer> rIdS, Optional<String> labelS, Optional<List<String>> fksR, Optional<List<String>> fksS) {
        try {
            if (fksR != null && fksS != null) {
                if (fksR.isPresent() && fksS.isPresent()) {
                    if (fksR.get().size() != fksS.get().size()) {
                        throw new RuntimeException("The foreign keys size is different.");
                    }
                }
            }

            return GlobalID.addAndGet(1);
        } catch (Exception e) {
            e.printStackTrace();
            return -1;
        }
    }

    // private static IdDataModel IdDataModelNode(Node n, Integer id) {
    // List<Property> props = App._PostgresGraph.GetPropertiesFromId(id);
    // List<String> cols = App._Postgres.GetColumns(n.Label);

    // }

    // private static IdDataModel idDataModelEdge(Edge e, Integer id) {
    // return null;
    // }

    // // Query here the db. Get all data from node, property based on 'id'. This
    // void
    // // has to become a class with the params from above.
    // public static IdDataModel idRev(Integer id) {
    // Node n = App._PostgresGraph.GetNodeFromId(id);
    // Edge e = App._PostgresGraph.GetEdgeFromId(id);
    // if (n != null) {
    // return IdDataModelNode(n, id);
    // } else if (e != null) {
    // return idDataModelEdge(e, id);
    // }
    // return null;

    // }
}
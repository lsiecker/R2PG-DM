package com.java.r2pgdm;

import java.util.List;
import java.util.Optional;
import java.util.concurrent.atomic.AtomicInteger;

import lombok.Getter;
import lombok.Setter;

/**
 * Global thread safe counter, incrementing each time an id is requesting
 */
public class Identifier {
    @Getter
    @Setter
    private static AtomicInteger GlobalID = new AtomicInteger(1);

    /**
     * Retrieves a new unique identifier
     *
     * @param fksSource list of foreign keys in the source table
     * @param fksTarget list of foreign keys in the target table
     * @return GlobalID++
     */
    @SuppressWarnings("OptionalUsedAsFieldOrParameterType")
    public static Integer id(Optional<List<String>> fksSource, Optional<List<String>> fksTarget) {
        try {
            if (fksSource.isPresent() && fksTarget.isPresent()) {
                if (fksSource.get().size() != fksTarget.get().size()) {
                    throw new RuntimeException("The foreign keys size is different.");
                }
            }

            return GlobalID.addAndGet(1);
        } catch (Exception e) {
            e.printStackTrace();
            return -1;
        }
    }
}
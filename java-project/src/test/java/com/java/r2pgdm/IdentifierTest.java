package com.java.r2pgdm;

import org.junit.Before;
import org.junit.Test;

import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Optional;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicInteger;

import static org.junit.Assert.assertEquals;

public class IdentifierTest {

    @Before
    public void setup() throws NoSuchFieldException, IllegalAccessException {
        Field field = Identifier.class.getDeclaredField("GlobalID");
        field.setAccessible(true);
        field.set(field, new AtomicInteger(0));
    }

    @Test
    public void singleThreaded() {
        for (int i = 1; i < 1000; i++) {
            assertEquals(Integer.valueOf(i), Identifier.id(Optional.empty(), Optional.empty()));
        }
    }

    @Test
    public void multiThreaded() {
        int tCount = Runtime.getRuntime().availableProcessors();
        ExecutorService executorService = Executors.newCachedThreadPool();
        ArrayList<Future<ArrayList<Integer>>> threads = new ArrayList<>();
        ArrayList<Integer> identifiers = new ArrayList<>();

        for (int i = 0; i < tCount; i++) {
            threads.add(executorService.submit(() -> count(10000)));
        }

        threads.forEach((t) -> {
            try {
                identifiers.addAll(t.get());
            } catch (InterruptedException | ExecutionException e) {
                e.printStackTrace();
            }
        });

        assertEquals(10000 * tCount, identifiers.size());
    }

    private ArrayList<Integer> count(int nr) {
        ArrayList<Integer> identifiers = new ArrayList<>();

        for (int i = 0; i < nr; i++) {
            identifiers.add(Identifier.id(Optional.empty(), Optional.empty()));
        }

        return identifiers;
    }

    @Test
    public void testIdWithEmptyForeignKeys() {
        Integer id = Identifier.id(Optional.empty(), Optional.empty());
        assertEquals(Integer.valueOf(1), id);
    }

}
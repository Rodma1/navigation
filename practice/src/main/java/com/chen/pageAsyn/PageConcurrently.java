package com.chen.pageAsyn;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class PageConcurrently {

    private final MockThirdPartyClient client;
    public  List<String> fetchAllPagesConcurrently(int totalPages, int pageSize) {
        ExecutorService executor = Executors.newFixedThreadPool(10); // 并发 10 个线程

        List<CompletableFuture<String>> futures = new ArrayList<>();

        for (int i = 1; i <= totalPages; i++) {
            int pageNo = i;
            CompletableFuture<String> future = CompletableFuture.supplyAsync(
                    () -> client.fetchPage(pageNo, pageSize),
                    executor
            );
            futures.add(future);
        }

        // 等待所有请求完成
        List<String> result = futures.stream()
                .map(CompletableFuture::join)
                .collect(Collectors.toList());

        executor.shutdown();
        return result;
    }

    public static void main(String[] args) {
        PageConcurrently pageConcurrently = new PageConcurrently(new MockThirdPartyClient());
        List<String> strings = pageConcurrently.fetchAllPagesConcurrently(20, 10);
        System.out.println(strings);
    }


}

//package com.chen.pageAsyn;
//
//import com.chen.common.config.ThreadPoolConfig;
//
//import java.util.*;
//import java.util.concurrent.CompletableFuture;
//import java.util.concurrent.CompletionException;
//import java.util.concurrent.ExecutorService;
//import java.util.stream.Collectors;
//import java.util.stream.IntStream;
//
//
//public class PageConcurrentlyDemoTwo {
//
//    private final MockThirdPartyClient client;
//    private final ExecutorService customExecutor;
//
//
//    public PageConcurrentlyDemoTwo(MockThirdPartyClient client, ExecutorService customExecutor) {
//        this.client = client;
//        this.customExecutor = customExecutor;
//    }
//
//    public  List<String> fetchAllPagesConcurrently(int totalPages, int pageSize) {
//        List<CompletableFuture<AbstractMap.SimpleEntry<Integer, String>>> futures = IntStream.rangeClosed(1, totalPages)
//                .mapToObj(pageNo ->
//                        CompletableFuture.supplyAsync(() -> {
//                            String data = client.fetchPageException(pageNo, pageSize);
//                            return new AbstractMap.SimpleEntry<>(pageNo, data);
//                        }, customExecutor)
//                ).toList();
//
//        List<Map.Entry<Integer, String>> results = futures.stream()
//                .map(future -> {
//                    try {
//                        return future.get(); // 或 future.join()
//                    } catch (Exception e) {
//                        customExecutor.shutdown();
//                        throw new CompletionException(e); // 统一抛出
//                    }
//                })                .sorted(Comparator.comparingInt(Map.Entry::getKey)) // 保证顺序
//                .collect(Collectors.toList());
//
//
//        customExecutor.shutdown();
//        return results.stream().map(Map.Entry::getValue).collect(Collectors.toList());
//    }
//
//    public static void main(String[] args) {
//        PageConcurrentlyDemoTwo pageConcurrently = new PageConcurrentlyDemoTwo(new MockThirdPartyClient(), new ThreadPoolConfig().customExecutor());
//        List<String> strings = pageConcurrently.fetchAllPagesConcurrently(20, 10);
//        System.out.println(strings);
//    }
//
//
//}

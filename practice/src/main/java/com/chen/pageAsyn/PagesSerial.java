package com.chen.pageAsyn;

import java.util.ArrayList;
import java.util.List;

public class PagesSerial {
    public static String fetchPage(int pageNo, int pageSize) {
        try {
            // 模拟网络延迟
            Thread.sleep(1000);
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
        }
        return "第 " + pageNo + "数据" + pageSize;
    }

    public static List<String> fetchAllPagesSerial(int totalPages, int pageSize) {
        List<String> result = new ArrayList<>();
        for (int i = 1; i <= totalPages; i++) {
            String pageData = fetchPage(i, pageSize);
            result.add(pageData);
        }
        return result;
    }

    public static void main(String[] args) {
        System.out.println(fetchAllPagesSerial(5, 100)); // 拉取5页，每页100条（模拟）

    }
}

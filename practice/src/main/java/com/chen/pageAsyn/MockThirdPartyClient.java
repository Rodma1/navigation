package com.chen.pageAsyn;


import org.springframework.stereotype.Component;

@Component
public class MockThirdPartyClient {
    public String fetchPage(int pageNo, int pageSize) {
        // 模拟调用第三方接口
        System.out.printf("开始拉取第 %s 页%n", pageNo);
        try {
            Thread.sleep(1000); // 模拟耗时
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return "第 " + pageNo + " 页数据" + pageSize;
    }

    public String fetchPageException(int pageNo, int pageSize) {
        // 模拟调用第三方接口
        System.out.printf("开始拉取第 %s 页%n", pageNo);
        try {
            if (pageNo == 2) {
                throw new RuntimeException("模拟异常");
            }
            Thread.sleep(1000); // 模拟耗时
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return "第 " + pageNo + " 页数据" + pageSize;
    }

}

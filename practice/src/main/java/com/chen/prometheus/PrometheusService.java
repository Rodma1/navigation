package com.chen.prometheus;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.util.UriComponentsBuilder;

import java.net.URI;
import java.util.ArrayList;
import java.util.List;

@Service
public class PrometheusService {

    private final RestTemplate restTemplate = new RestTemplate();
    private final String PROMETHEUS_URL = "http://192.168.1.111:9090";

    // 获取所有服务信息
    public List<PrometheusResult> getServiceMetrics() {
        List<PrometheusResult> resultList = new ArrayList<>();

        try {
//            https://blog.csdn.net/qq_35753140/article/details/105121525
            String cpuUsageQuery = "100 - (avg by(instance) (irate(node_cpu_seconds_total{mode=\"idle\"}[1m])) * 100)";
            String memUsageQuery = "(1 - (node_memory_MemAvailable_bytes / node_memory_MemTotal_bytes)) * 100";
//            String diskUsageQuery = "(node_filesystem_size_bytes - node_filesystem_avail_bytes) / node_filesystem_size_bytes * 100";
            String diskUsageQuery = "(1 - (node_filesystem_free_bytes{mountpoint=\"/\"} / node_filesystem_size_bytes{mountpoint=\"/\"})) * 100";
            String networkQuery = "irate(node_network_receive_bytes_total[1m])";
            String statusQuery = "up";

            // 解析各个查询数据
            JsonNode cpuUsageData = getQueryResult(cpuUsageQuery);
            JsonNode memUsageData = getQueryResult(memUsageQuery);
            JsonNode diskUsageData = getQueryResult(diskUsageQuery);
            JsonNode networkData = getQueryResult(networkQuery);
            JsonNode statusData = getQueryResult(statusQuery);

            if (cpuUsageData.isArray()) {
                for (JsonNode node : cpuUsageData) {
                    String instance = node.get("metric").get("instance").asText();
                    double cpuUsage = node.get("value").get(1).asDouble();
                    double memUsage = getMetricValue(memUsageData, instance);
                    double diskUsage = getMetricValue(diskUsageData, instance);
                    double networkTraffic = getMetricValue(networkData, instance);
                    String status = getServiceStatus(statusData, instance);

                    PrometheusResult result = new PrometheusResult();
                    result.setInstance(instance);
                    result.setCpuUsage(cpuUsage);
                    result.setMemUsage(memUsage);
                    result.setDiskUsage(diskUsage);
                    result.setNetworkTraffic(networkTraffic);
                    result.setStatus(status);
                    result.setServerName(this.getServiceName(statusData, instance)); // 或自定义

                    resultList.add(result);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return resultList;
    }

    // 自动编码查询语句
    private JsonNode getQueryResult(String query) throws Exception {
        // 构建 URL 并自动处理编码
        URI uri = UriComponentsBuilder.fromHttpUrl(PROMETHEUS_URL + "/api/v1/query")
                .queryParam("query", query)
                .build()
                .encode()  // 自动编码
                .toUri();


        // 直接发送请求
        String response = restTemplate.getForObject(uri, String.class);
        ObjectMapper mapper = new ObjectMapper();
        JsonNode rootNode = mapper.readTree(response);

        return rootNode.path("data").path("result");
    }

    // 获取某个指标的值
    private double getMetricValue(JsonNode data, String instance) {
        for (JsonNode node : data) {
            if (node.get("metric").get("instance").asText().equals(instance)) {
                return node.get("value").get(1).asDouble();
            }
        }
        return 0.0;
    }


    // 获取服务状态
    private String getServiceStatus(JsonNode data, String instance) {
        for (JsonNode node : data) {
            if (node.get("metric").get("instance").asText().equals(instance)) {
                int up = node.get("value").get(1).asInt();
                return up == 1 ? "up" : "down";
            }
        }
        return "unknown";
    }

    // 获取服务名
    private String getServiceName(JsonNode data, String instance) {
        for (JsonNode node : data) {
            if (node.get("metric").get("instance").asText().equals(instance)) {
                return node.get("metric").get("job").asText();
            }
        }
        return "unknown";
    }
}

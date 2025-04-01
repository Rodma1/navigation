package com.chen.prometheus;

import lombok.Data;

@Data
public class PrometheusResult {
    private String instance;
    private double cpuUsage;
    private double memUsage;
    private double diskUsage;
    private double networkTraffic;
    private String status;
    private String serverName;
}

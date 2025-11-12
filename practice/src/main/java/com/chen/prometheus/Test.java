package com.chen.prometheus;

import com.chen.utils.json.FastJsonUtils;
import lombok.RequiredArgsConstructor;

import java.util.List;

@RequiredArgsConstructor
public class Test {


    public static void main(String[] args) {
        PrometheusService prometheusService = new PrometheusService();
        List<PrometheusResult> serviceMetrics = prometheusService.getServiceMetrics();
        System.out.println(FastJsonUtils.toJson(serviceMetrics));
        // 返回结果： [{"cpuUsage":0.22499999999961062,"diskUsage":4.291012762579383,"instance":"localhost:9100","memUsage":6.91930055375577,"networkTraffic":4422.533333333334,"serverName":"192.168.1.111","status":"up"}]
    }
}

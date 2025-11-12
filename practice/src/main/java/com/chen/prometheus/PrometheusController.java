package com.chen.prometheus;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import java.util.List;

@RestController
@RequestMapping("/api/prometheus")
public class PrometheusController {

    @Autowired
    private PrometheusService prometheusService;

    @GetMapping("/metrics")
    public List<PrometheusResult> getServiceMetrics() {
        return prometheusService.getServiceMetrics();
    }
}

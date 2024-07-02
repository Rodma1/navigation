package com.chen.service.elasticsearch.operation;

import com.chen.domain.elsaticsearch.ElasticsearchConnectParam;
import com.chen.domain.elsaticsearch.ElasticsearchFactoryParam;
import com.chen.service.elasticsearch.impl.ElasticsearchOperationStrategy;

import java.util.List;

/**
 * @Author chenyunzhi
 * @DATE 2024/6/24 18:00
 * @Description: es 工厂模式
 */
public class ElasticsearchOperationStrategyFactory {

    /**
     * 创建策略
     */
    public static ElasticsearchOperationStrategy createStrategy(ElasticsearchFactoryParam factoryParam) {
        switch (factoryParam.getOperationType()) {
            case "INFO":
                return null;
            case  "DELETE":
                return new DeleteIndexOperationStrategy(factoryParam.getIndices());
        }
        return null;
    }

}

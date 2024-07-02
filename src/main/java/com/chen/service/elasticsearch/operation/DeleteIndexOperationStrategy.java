package com.chen.service.elasticsearch.operation;

import co.elastic.clients.elasticsearch.ElasticsearchClient;
import co.elastic.clients.elasticsearch.core.DeleteResponse;
import com.chen.service.elasticsearch.impl.ElasticsearchOperationStrategy;
import lombok.extern.slf4j.Slf4j;

import java.util.List;

/**
 * @Author chenyunzhi
 * @DATE 2024/6/24 17:24
 * @Description: es删除索引操作策略
 */
@Slf4j
public class DeleteIndexOperationStrategy implements ElasticsearchOperationStrategy {

    private final List<String> indices;

    public DeleteIndexOperationStrategy(List<String> indices) {
        this.indices = indices;
    }
    @Override
    public Object execute(ElasticsearchClient client) {
        for (String indexName:indices) {
            try {
                client.delete(d -> d.index(indexName));
            } catch (Exception e) {
                log.error("删除索引" + indexName + "失败");
            }
        }
        return true;
    }
}

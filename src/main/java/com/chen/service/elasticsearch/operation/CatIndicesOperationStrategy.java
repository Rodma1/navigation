package com.chen.service.elasticsearch.operation;

import co.elastic.clients.elasticsearch.ElasticsearchClient;
import co.elastic.clients.elasticsearch.cat.indices.IndicesRecord;
import com.chen.common.utils.BeanUtils;
import com.chen.domain.elsaticsearch.CatIndicesRecord;
import com.chen.service.elasticsearch.impl.ElasticsearchOperationStrategy;

import java.io.IOException;
import java.util.List;

/**
 * @Author chenyunzhi
 * @DATE 2024/7/5 11:05
 * @Description: 查询所有索引信息
 */
public class CatIndicesOperationStrategy implements ElasticsearchOperationStrategy {
    @Override
    public Object execute(ElasticsearchClient elasticsearchClient) throws IOException {
        List<IndicesRecord> indicesRecords = elasticsearchClient.cat().indices().valueBody();
        return BeanUtils.copyList(indicesRecords, CatIndicesRecord.class);
    }
}

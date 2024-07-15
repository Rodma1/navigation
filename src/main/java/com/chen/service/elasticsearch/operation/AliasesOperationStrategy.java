package com.chen.service.elasticsearch.operation;

import co.elastic.clients.elasticsearch.ElasticsearchClient;
import co.elastic.clients.elasticsearch.indices.PutAliasRequest;
import co.elastic.clients.elasticsearch.indices.PutAliasResponse;
import com.chen.domain.elsaticsearch.ElasticsearchFactoryParam;
import com.chen.service.elasticsearch.impl.ElasticsearchOperationStrategy;

import java.io.IOException;
import java.util.List;

/**
 * @Author chenyunzhi
 * @DATE 2024/7/11 17:06
 * @Description:
 */
public class AliasesOperationStrategy  implements ElasticsearchOperationStrategy {

    private  final ElasticsearchFactoryParam factoryParam;

    public AliasesOperationStrategy(ElasticsearchFactoryParam factoryParam) {
        this.factoryParam = factoryParam;
    }


    @Override
    public Object execute(ElasticsearchClient elasticsearchClient) throws IOException {

        this.createAliases(elasticsearchClient, factoryParam.getAlias(), factoryParam.getIndices(), factoryParam.getAliasWriteIndex());
        return null;
    }

    /**
     * 创建别名关联多个索引，并且可以指定某个索引为写入索引
     */
    private Object createAliases(ElasticsearchClient client, String alias, List<String> indices, String aliasWriteIndex) throws IOException {

//        for (String index: indices) {
//        }
        PutAliasRequest build = new PutAliasRequest.Builder().index(indices).name(alias).build();

        PutAliasResponse putAliasResponse = client.indices().putAlias(build);
        return putAliasResponse.acknowledged();
    }
}

package com.chen.service.elasticsearch.operation;

import co.elastic.clients.elasticsearch.ElasticsearchClient;
import co.elastic.clients.elasticsearch.core.DeleteResponse;
import co.elastic.clients.elasticsearch.core.IndexResponse;
import com.chen.domain.elsaticsearch.ElasticsearchFactoryParam;
import com.chen.service.elasticsearch.impl.ElasticsearchOperationStrategy;
import io.swagger.annotations.ApiModelProperty;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;

/**
 * @Author chenyunzhi
 * @DATE 2024/7/8 18:30
 * @Description:
 */
public class DocOperationStrategy implements ElasticsearchOperationStrategy {

    private  final ElasticsearchFactoryParam factoryParam;


    public DocOperationStrategy(ElasticsearchFactoryParam factoryParam) {
        this.factoryParam = factoryParam;
    }


    @Override
    public Object execute(ElasticsearchClient client) throws IOException {
        switch (factoryParam.getOperationType()) {
            case "CREATE":
                return this.createDoc(client, factoryParam.getIndexName(),factoryParam.getDocument());
            case  "DELETE":
                return this.deleteDocumentTest(client, factoryParam.getIndexName());
            case "INFO":
                return this.getDocumentInfo(client ,factoryParam.getIndexName(), factoryParam.getDocumentId());
        }
        return null;
    }

    private Object createDoc(ElasticsearchClient client, String indexName, String jsonContent) throws IOException {
        IndexResponse index = client.index(i -> i.index(indexName).document(jsonContent));
        return index.id();
    }

    public void updateDocument(ElasticsearchClient client, String indexName,String documentId, String jsonContent) throws IOException {
    }

    public Object deleteDocumentTest(ElasticsearchClient client, String indexName) throws IOException {
        DeleteResponse deleteResponse = client.delete(d -> d
                .index(indexName)
        );
       return deleteResponse.id();
    }

    public Object getDocumentInfo(ElasticsearchClient client, String indexName , String documentId) throws IOException {

        return client.get(g -> g
                        .index(indexName)
                        .id(documentId)
                , HashMap.class
        );
    }

}

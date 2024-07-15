package com.chen.service.elasticsearch.operation;

import cn.hutool.core.util.ObjectUtil;
import co.elastic.clients.elasticsearch.ElasticsearchClient;
import co.elastic.clients.elasticsearch._types.SortOrder;
import co.elastic.clients.elasticsearch.core.DeleteResponse;
import co.elastic.clients.elasticsearch.core.IndexResponse;
import co.elastic.clients.elasticsearch.core.SearchRequest;
import com.chen.common.exception.ServiceException;
import com.chen.common.utils.StringUtils;
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
            case "INSERT":
                return this.insertDoc(client, factoryParam.getIndexName(),factoryParam.getDocument());
            case  "DELETE":
                return this.deleteDocument(client, factoryParam.getIndexName());
            case "INFO":
                return this.getDocumentInfo(client ,factoryParam.getIndexName(), factoryParam.getDocumentId());
            case "PAGE":
                return this.getDocumentsPage(client, factoryParam.getIndices(), factoryParam.getPageNum()
                        , factoryParam.getPageSize(), factoryParam.getSortField(), factoryParam.getSortOrder());
            default:
                return null;
        }
    }

    private Object insertDoc(ElasticsearchClient client, String indexName, String jsonContent) throws IOException {
        try {
            IndexResponse index = client.index(i -> i.index(indexName).document(jsonContent));
            return index.id();
        } catch (Exception e) {
            throw  new ServiceException("创建失败" + e.getMessage());
        }

    }

    public void updateDocument(ElasticsearchClient client, String indexName,String documentId, String jsonContent) throws IOException {
    }

    public Object deleteDocument(ElasticsearchClient client, String indexName) throws IOException {
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

    /**
     * 获取分页的文档列表
     */
    public Object getDocumentsPage(ElasticsearchClient client, List<String> indices, int pageNum, int pageSize,String sortField, String sortOrder) throws IOException {
        SearchRequest.Builder builder = new SearchRequest.Builder();
        if (ObjectUtil.isNotNull(indices) && !indices.isEmpty()) {
            builder.index(indices);
        }
        builder.from((pageNum - 1) * pageSize).size(pageSize);
        if (StringUtils.isNotBlank(sortField) && StringUtils.isNotBlank(sortOrder)) {
            builder.sort(sort->sort.field(f->f.field(sortField).order(SortOrder.valueOf(sortOrder))));
        }
        return client.search(s-> s,HashMap.class).hits().hits();
    }


}

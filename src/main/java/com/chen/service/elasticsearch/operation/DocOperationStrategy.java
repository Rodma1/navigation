package com.chen.service.elasticsearch.operation;

import cn.hutool.core.util.ObjectUtil;
import co.elastic.clients.elasticsearch.ElasticsearchClient;
import co.elastic.clients.elasticsearch._types.SortOrder;
import co.elastic.clients.elasticsearch.core.*;
import co.elastic.clients.elasticsearch.core.search.Hit;
import com.chen.common.exception.ServiceException;
import com.chen.common.utils.StringUtils;
import com.chen.domain.elsaticsearch.ElasticsearchDocument;
import com.chen.domain.elsaticsearch.ElasticsearchFactoryParam;
import com.chen.service.elasticsearch.impl.ElasticsearchOperationStrategy;
import io.swagger.annotations.ApiModelProperty;

import java.io.IOException;
import java.io.StringReader;
import java.util.ArrayList;
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
                return this.deleteIndexDocument(client, factoryParam.getIndices(), factoryParam.getDocumentIds());
            case "INFO":
                return this.getDocumentInfo(client ,factoryParam.getIndexName(), factoryParam.getDocumentId());
            case "PAGE":
                return this.getDocumentsPage(client, factoryParam.getIndices(), factoryParam.getPageNum()
                        , factoryParam.getPageSize(), factoryParam.getSortField(), factoryParam.getSortOrder());
            case "COUNT":
                return this.getDocumentCount(client, factoryParam.getIndices());
            default:
                return null;
        }
    }

    private Object insertDoc(ElasticsearchClient client, String indexName, String jsonContent) throws IOException {
        try {
            IndexResponse index = client.index(i -> i.index(indexName).withJson(new StringReader(jsonContent)));
            return index.id();
        } catch (Exception e) {
            throw  new ServiceException("创建失败" + e.getMessage());
        }

    }

    public void updateDocument(ElasticsearchClient client, String indexName,String documentId, String jsonContent) throws IOException {
    }

    public Object deleteDocument(ElasticsearchClient client, List<String> documentIds) throws IOException {
        try {
            DeleteByQueryResponse deleteByQueryResponse = client.deleteByQuery(d -> d.query(q -> q.ids(i -> i.values(documentIds))));
            return deleteByQueryResponse.deleted();

        } catch (Exception e) {
            throw  new ServiceException(e.getMessage());
        }
    }

    /**
     * 批量删除文档
     */
    public Object deleteIndexDocument(ElasticsearchClient client,  List<String> indices, List<String> documentIds) throws IOException {
        try {
            DeleteByQueryResponse deleteByQueryResponse = client.deleteByQuery(d -> d.index(indices).query(q -> q.ids(i -> i.values(documentIds))));
            return deleteByQueryResponse.deleted();

        } catch (Exception e) {
            throw  new ServiceException(e.getMessage());
        }
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
        List<ElasticsearchDocument> elasticsearchDocuments = new ArrayList<>();
        client.search(builder.build(), HashMap.class).hits().hits().forEach(item ->{
            ElasticsearchDocument elasticsearchDocument = new ElasticsearchDocument();
            elasticsearchDocument.setId(item.id()).setIndex(item.index()).setSource(item.source());
            elasticsearchDocuments.add(elasticsearchDocument);
        });

        return elasticsearchDocuments;
    }

    /**
     * 获取文档数
     */
    public Object getDocumentCount(ElasticsearchClient client, List<String> indices) throws IOException {
        if (ObjectUtil.isNotNull(indices) && !indices.isEmpty()) {
            return client.count(c -> c.index(indices)).count();
        }
        return client.count().count();
    }


}

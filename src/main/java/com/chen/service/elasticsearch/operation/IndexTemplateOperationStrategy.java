package com.chen.service.elasticsearch.operation;

import co.elastic.clients.elasticsearch.ElasticsearchClient;
import co.elastic.clients.elasticsearch.cat.component_templates.ComponentTemplate;
import co.elastic.clients.elasticsearch.cat.templates.TemplatesRecord;
import co.elastic.clients.elasticsearch.indices.DeleteTemplateResponse;
import co.elastic.clients.elasticsearch.indices.GetIndexTemplateResponse;
import co.elastic.clients.elasticsearch.indices.PutIndexTemplateResponse;
import com.chen.common.exception.ServiceException;
import com.chen.common.utils.BeanUtils;
import com.chen.common.utils.json.FastJsonUtils;
import com.chen.domain.elsaticsearch.CatTemplatesRecord;
import com.chen.domain.elsaticsearch.ElasticsearchFactoryParam;
import com.chen.service.elasticsearch.impl.ElasticsearchOperationStrategy;
import lombok.RequiredArgsConstructor;

import java.io.IOException;
import java.io.StringReader;
import java.util.List;

/**
 * @Author chenyunzhi
 * @DATE 2024/7/16 19:14
 * @Description:
 */
@RequiredArgsConstructor
public class IndexTemplateOperationStrategy implements ElasticsearchOperationStrategy {

    private final ElasticsearchFactoryParam factoryParam;
    @Override
    public Object execute(ElasticsearchClient elasticsearchClient) throws IOException {
        switch (factoryParam.getOperationType()) {
            case "LIST":
                return this.getTemplateList(elasticsearchClient);
            case "INFO":
                return this.getTemplateInfo(elasticsearchClient, factoryParam.getIndexTemplate());
            case "PUT":
                return this.putTemplate(elasticsearchClient, factoryParam.getIndexTemplate());
            case "DELETE":
                return this.deleteTemplate(elasticsearchClient, factoryParam.getIndexTemplate());
        }
        return null;
    }

    /**
     * 获取模板列表
     */
    public Object getTemplateList(ElasticsearchClient client) throws IOException {
        List<ComponentTemplate> componentTemplates = client.cat().componentTemplates().valueBody();
        List<TemplatesRecord> templatesRecords = client.cat().templates().valueBody();
        return BeanUtils.copyList(templatesRecords, CatTemplatesRecord.class);
    }

    /**
     * 查询模板详情
     */
    public Object getTemplateInfo(ElasticsearchClient client, String indexTemplate) throws IOException {

        GetIndexTemplateResponse indexTemplate1 = client.indices().getIndexTemplate(t -> t.name(indexTemplate));
        return FastJsonUtils.toJson(indexTemplate1);
    }

    /**
     * 创建和更新
     */
    public Object putTemplate(ElasticsearchClient client, String indexTemplate) {
        try {
            PutIndexTemplateResponse putIndexTemplateResponse = client.indices().putIndexTemplate(p -> p.withJson(new StringReader(indexTemplate)));
            return putIndexTemplateResponse.acknowledged();
        } catch (Exception e) {
            return new ServiceException("更新失败:" + e.getMessage());
        }

    }

    /**
     * 删除模板
     */
    public Object deleteTemplate(ElasticsearchClient client, String indexTemplate) {
        try {
            DeleteTemplateResponse deleteTemplateResponse = client.indices().deleteTemplate(d -> d.name(indexTemplate));
            return deleteTemplateResponse.acknowledged();
        } catch (Exception e) {
            return new ServiceException("删除失败:"  + e.getMessage());
        }
    }




}

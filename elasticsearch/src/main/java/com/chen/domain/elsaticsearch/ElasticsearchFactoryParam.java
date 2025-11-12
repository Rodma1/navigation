package com.chen.domain.elsaticsearch;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.io.Serializable;
import java.util.List;

/**
 * @Author chenyunzhi
 * @DATE 2024/7/2 17:36
 * @Description:
 */
@Data
public class ElasticsearchFactoryParam implements Serializable {


    @Schema(name ="操作类别 文档  索引")
    public String operationCategory;

    @Schema(name ="操作类型 添加 删除 修改等等")
    public String operationType;

    @Schema(name ="索引名")
    public String indexName;


    @Schema(name ="索引列表")
    public List<String> indices;


    @Schema(name ="文档")
    public String document;


    @Schema(name ="文档Id")
    public String documentId;

    @Schema(name ="文档Id列表")
    public List<String> documentIds;

    @Schema(name ="页数")
    public int pageNum;

    @Schema(name ="页数大小")
    public int pageSize;

    @Schema(name ="要排序的字段")
    public String sortField;

    @Schema(name ="排序 Asc 升序  Desc降序")
    public String sortOrder;

    @Schema(name ="索引别名")
    public String alias;

    @Schema(name ="索引别名的写入索引")
    public String aliasWriteIndex;

    @Schema(name ="索引模板名")
    public String indexTemplate;

    @Schema(name ="索引模板内容")
    public String indexTemplateContent;

    @Schema(name ="任务Id")
    public String taskId;

    @Schema(name ="查询字段")
    public List<SearchFields> searchFields;

    @Schema(name ="时间查询")
    public ElasticsearchTimeSearch timeSearch;
    public ElasticsearchFactoryParam(List<String> indies) {
        this.indices = indies;
    }

    // 添加无参构造函数
    public ElasticsearchFactoryParam() {
    }

}

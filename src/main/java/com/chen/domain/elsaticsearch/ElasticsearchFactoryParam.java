package com.chen.domain.elsaticsearch;

import io.swagger.annotations.ApiModelProperty;
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


    @ApiModelProperty("操作类别 文档  索引")
    public String operationCategory;

    @ApiModelProperty("操作类型 添加 删除 修改等等")
    public String operationType;

    @ApiModelProperty("索引名")
    public String indexName;


    @ApiModelProperty("索引列表")
    public List<String> indices;


    @ApiModelProperty("文档")
    public String document;


    @ApiModelProperty("文档Id")
    public String documentId;


    @ApiModelProperty("索引别名")
    public String alias;

    @ApiModelProperty("索引别名的写入索引")
    public String aliasWriteIndex;

    public ElasticsearchFactoryParam(List<String> indies) {
        this.indices = indies;
    }

    // 添加无参构造函数
    public ElasticsearchFactoryParam() {
    }

}

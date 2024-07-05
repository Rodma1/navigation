package com.chen.domain.elsaticsearch;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.util.List;

/**
 * @Author chenyunzhi
 * @DATE 2024/7/2 17:36
 * @Description:
 */
@Data
public class ElasticsearchFactoryParam {


    @ApiModelProperty("操作类型")
    public String operationType;

    @ApiModelProperty("索引名")
    public String indexName;

    @ApiModelProperty("文档")
    public String document;

    @ApiModelProperty("索引列表")
    public List<String> indices;

    public ElasticsearchFactoryParam(List<String> indies) {
        this.indices = indies;
    }

    // 添加无参构造函数
    public ElasticsearchFactoryParam() {
    }

}

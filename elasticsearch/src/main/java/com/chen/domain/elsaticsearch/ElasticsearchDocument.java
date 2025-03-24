package com.chen.domain.elsaticsearch;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;
import lombok.experimental.Accessors;

import java.util.HashMap;

/**
 * es文档
 *
 * @author chenyunzhi
 * @date 2024/7/15 21:08
 */

@Data
@Accessors(chain = true)
public class ElasticsearchDocument {

    @Schema(name ="索引名")
    public String index;

    @Schema(name ="文档id")
    public String id;

    @Schema(name ="文档")
    public HashMap source;
}

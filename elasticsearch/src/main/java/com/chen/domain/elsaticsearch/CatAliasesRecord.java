package com.chen.domain.elsaticsearch;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import javax.annotation.Nullable;
import java.io.Serializable;

/**
 * @Author chenyunzhi
 * @DATE 2024/7/16 17:57
 * @Description:
 */
@Data
public class CatAliasesRecord implements Serializable {

    @Schema(name ="别名")
    public String alias;

    @Schema(name ="索引名")
    public String index;

    @Schema(name ="")
    public String filter;

    @Schema(name ="")
    public String routingIndex;

    @Schema(name ="")
    public String routingSearch;

    @Schema(name ="是否是写入索引")
    public String isWriteIndex;

}

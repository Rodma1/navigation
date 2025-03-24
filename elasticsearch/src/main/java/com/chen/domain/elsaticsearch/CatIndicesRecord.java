package com.chen.domain.elsaticsearch;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

/**
 * @Author chenyunzhi
 * @DATE 2024/7/5 13:44
 * @Description:
 */
@Data
public class CatIndicesRecord {

    @Schema(name ="健康状态")
    public  String health;

    @Schema(name ="索引的状态")
    public  String status;

    @Schema(name ="索引的名称")
    public  String index;

    @Schema(name ="索引的唯一标识符")
    public  String uuid;

    @Schema(name ="主分片的数量")
    public  String pri;

    @Schema(name ="副本分片的数量")
    public  String rep;

    @Schema(name ="文档的数量")
    public  String docsCount;

    @Schema(name ="被删除但尚未清除的文档数量")
    public  String docsDeleted;

    @Schema(name ="索引所占用的存储空间")
    public String storeSize;

    @Schema(name ="主分片所占用的存储空间")
    public String priStoreSize;
}

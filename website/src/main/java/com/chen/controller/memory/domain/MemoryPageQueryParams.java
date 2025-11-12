package com.chen.controller.memory.domain;

import com.chen.config.mybatisplus.page.BasePagesQuery;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Getter;
import lombok.Setter;

import java.util.Date;

/**
 * @Author chenyunzhi
 * @DATE 2024/7/24 15:40
 * @Description:
 */
@Getter
@Setter
@Schema(name ="分页查询")
public class MemoryPageQueryParams extends BasePagesQuery {

    @Schema(name ="内容")
    private String content;

    @Schema(name ="创建时间")
    private Date createTime;



}

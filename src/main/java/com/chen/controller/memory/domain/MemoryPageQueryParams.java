package com.chen.controller.memory.domain;

import com.chen.common.config.mybatisplus.page.BasePagesQuery;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
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
@ApiModel("分页查询")
public class MemoryPageQueryParams extends BasePagesQuery {

    @ApiModelProperty("内容")
    private String content;

    @ApiModelProperty("创建时间")
    private Date createTime;



}

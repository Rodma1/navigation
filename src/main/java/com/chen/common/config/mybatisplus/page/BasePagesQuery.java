package com.chen.common.config.mybatisplus.page;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;

/**
 * @Author chenyunzhi
 * @DATE 2024/7/19 15:02
 * @Description:
 */


@Getter
@Setter
public class BasePagesQuery {

    @ApiModelProperty("页码")
    private Integer pageNum = 1;

    @ApiModelProperty("每页数量")
    private Integer pageSize = 10;

    public BasePagesQuery() {
        super();
    }
}

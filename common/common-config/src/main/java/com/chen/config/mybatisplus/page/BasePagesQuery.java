package com.chen.config.mybatisplus.page;

import io.swagger.v3.oas.annotations.media.Schema;
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

    @Schema(name ="页码")
    private Integer pageNum = 1;

    @Schema(name ="每页数量")
    private Integer pageSize = 10;

    public BasePagesQuery() {
        super();
    }
}

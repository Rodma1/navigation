package com.chen.controller.phrases.domain;

import com.chen.config.mybatisplus.page.BasePagesQuery;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Getter;
import lombok.Setter;

/**
 * @Author chenyunzhi
 * @DATE 2024/7/24 15:40
 * @Description:
 */
@Getter
@Setter
@Schema(name ="分页查询")
public class PageQueryParams extends BasePagesQuery {

    @Schema(name ="句子")
    private String sentence;


}

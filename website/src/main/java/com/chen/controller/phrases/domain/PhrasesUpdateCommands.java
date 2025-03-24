package com.chen.controller.phrases.domain;

import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.util.List;

/**
 * @Author chenyunzhi
 * @DATE 2024/7/26 11:06
 * @Description:
 */

@Data
@Schema(name ="句子更新")
public class PhrasesUpdateCommands {

    @Schema(name ="类别")
    private List<Long> categoryIds;

    @Schema(name ="推荐等级")
    private String rank;

    @Schema(name ="句子")
    private String sentence;

    private Long id;

}

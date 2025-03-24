package com.chen.controller.phrases.domain;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.util.List;

/**
 * @author chenyunzhi
 */
@Data
@Schema(name ="文章删除")
public class PhrasesDeleteCommands {

    private List<Long> ids;
}

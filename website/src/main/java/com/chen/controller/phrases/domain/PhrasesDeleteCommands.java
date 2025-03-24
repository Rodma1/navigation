package com.chen.controller.phrases.domain;

import io.swagger.annotations.ApiModel;
import lombok.Data;

import java.util.List;

/**
 * @author chenyunzhi
 */
@Data
@ApiModel("文章删除")
public class PhrasesDeleteCommands {

    private List<Long> ids;
}

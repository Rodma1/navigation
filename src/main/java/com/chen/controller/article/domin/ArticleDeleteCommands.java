package com.chen.controller.article.domin;

import io.swagger.annotations.ApiModel;
import lombok.Data;

import java.util.List;

/**
 * @Author chenyunzhi
 * @DATE 2024/7/24 17:39
 * @Description:
 */

@Data
@ApiModel("文章删除")
public class ArticleDeleteCommands {

    private List<Long> ids;
}

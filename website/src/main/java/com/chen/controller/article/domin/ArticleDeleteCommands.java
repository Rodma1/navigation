package com.chen.controller.article.domin;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.util.List;

/**
 * @Author chenyunzhi
 * @DATE 2024/7/24 17:39
 * @Description:
 */

@Data
@Schema(name ="文章删除")
public class ArticleDeleteCommands {

    private List<Long> ids;
}

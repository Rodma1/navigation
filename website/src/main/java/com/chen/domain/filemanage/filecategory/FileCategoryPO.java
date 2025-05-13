package com.chen.domain.filemanage.filecategory;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Getter;
import lombok.Setter;

import java.io.Serializable;

@Getter
@Setter
@TableName("cyz_phrases_category")
@Schema(name   = "PhrasesCategoryPO对象", description = "")
public class FileCategoryPO implements Serializable {

    @Schema(name ="类别名称")
    @TableField("name")
    private String name;
}

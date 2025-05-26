package com.chen.domain.filecategory;

import io.swagger.v3.oas.annotations.media.Schema;
import jakarta.persistence.Entity;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;
import com.chen.entity.LongIdEntity;
import org.hibernate.annotations.Comment;

@Entity
@Getter
@Setter
@Table(name = "cyz_file_category")
public class FileCategoryPo extends LongIdEntity {



    @Schema(name ="类别名称")
    @Comment("类别名称")
    private String name;

    @Schema(name ="排序")
    @Comment("排序")
    private Integer sort;

    @Schema(name ="图标")
    @Comment("图标")
    private String icon;

    @Schema(name ="父id")
    @Comment("父id")
    private Long parentId;
}

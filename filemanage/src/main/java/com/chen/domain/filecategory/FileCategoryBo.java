package com.chen.domain.filecategory;

import com.chen.common.category.BaseCategory;
import com.chen.common.exception.ServiceException;
import com.chen.core.BaseBizCommand;
import com.chen.utils.BeanUtils;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;
import lombok.EqualsAndHashCode;
import org.hibernate.annotations.Comment;

import java.io.Serializable;

@EqualsAndHashCode(callSuper = true)
@Data
public class FileCategoryBo extends BaseCategory  implements Serializable, BaseBizCommand<FileCategoryPo> {
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

    @Override
    public FileCategoryPo buildInsertPo() throws ServiceException {
        return BeanUtils.copyObject(this, FileCategoryPo.class);
    }

    @Override
    public FileCategoryPo buildDeletePo() throws ServiceException {
        return null;
    }

    @Override
    public FileCategoryPo buildUpdatePo() throws ServiceException {
        return BeanUtils.copyObject(this, FileCategoryPo.class);
    }
}

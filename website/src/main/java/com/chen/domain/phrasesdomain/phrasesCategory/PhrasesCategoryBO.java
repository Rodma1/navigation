package com.chen.domain.phrasesdomain.phrasesCategory;

import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import java.sql.Timestamp;
import java.util.Date;

import com.chen.config.mybatisplus.core.command.BaseBizCommand;
import com.chen.common.exception.ServiceException;
import com.chen.utils.BeanUtils;
import com.chen.common.category.BaseCategory;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

/**
 * <p>
 *
 * </p>
 *
 * @author 神的孩子都在歌唱
 * @since 2024-08-01
 */
@Data
@TableName("cyz_phrases_category")
@Schema(name   = "PhrasesCategoryBO对象", description = "")
public class PhrasesCategoryBO extends BaseCategory implements Serializable, BaseBizCommand<PhrasesCategoryPO> {

    private static final long serialVersionUID = 1L;

    @Schema(name ="类别名称")
    private String name;

    @Schema(name ="创建时间")
    private Date createTime;

    @Schema(name ="更新时间")
    private Date updateTime;

    @Schema(name ="删除标志(0代表存在 1代表删除)")
    private String delFlag;

    @Schema(name ="创建者")
    private String createBy;

    @Schema(name ="更新者")
    private String updateBy;

    @Schema(name ="排序")
    private Integer sort;

    @Schema(name ="图标")
    private String icon;

    @Schema(name ="父id")
    private Long parentId;

    private Long id;


    @Override
    public PhrasesCategoryPO buildInsertPo() throws ServiceException {
        PhrasesCategoryPO phrasesCategoryPo = BeanUtils.copyObject(this, PhrasesCategoryPO.class);
        phrasesCategoryPo.setCreateTime(new Timestamp(System.currentTimeMillis()));
        return phrasesCategoryPo;
    }

    @Override
    public PhrasesCategoryPO buildDeletePo() throws ServiceException {
        return null;
    }

    @Override
    public PhrasesCategoryPO buildUpdatePo() throws ServiceException {
        this.setUpdateTime(new Timestamp(System.currentTimeMillis()));
        return  BeanUtils.copyObject(this, PhrasesCategoryPO.class);
    }
}

package com.chen.domain.phrasesdomain.phrases;

import com.baomidou.mybatisplus.annotation.TableLogic;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import com.chen.common.config.mybatisplus.core.command.BaseBizCommand;
import com.chen.common.exception.ServiceException;
import com.chen.common.utils.BeanUtils;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Getter;
import lombok.Setter;

/**
 * <p>
 *
 * </p>
 *
 * @author 神的孩子都在歌唱
 * @since 2024-07-26
 */
@Getter
@Setter
@TableName("cyz_phrases")
@ApiModel(value = "PhrasesBO对象", description = "")
public class PhrasesBO implements Serializable, BaseBizCommand<PhrasesPO> {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty("句子")
    private String sentence;

    @ApiModelProperty("创建时间")
    private Date createTime;

    @ApiModelProperty("更新时间")
    private Date updateTime;

    @ApiModelProperty("删除标志(0代表存在 1代表删除)")
    @TableLogic
    private String delFlag;

    @ApiModelProperty("创建者")
    private String createBy;

    @ApiModelProperty("更新者")
    private String updateBy;

    @ApiModelProperty("类别")
    private Long categoryId;

    @ApiModelProperty("推荐等级")
    private String rank;

    @ApiModelProperty("父类")
    private String parentClass;


    @ApiModelProperty("文章类别ids")
    private List<Long> categoryIds;

    private Long id;


    @Override
    public PhrasesPO buildInsertPo() throws ServiceException {
        PhrasesPO phrasesPo = BeanUtils.copyObject(this, PhrasesPO.class);
        phrasesPo.setCreateTime(new Timestamp(System.currentTimeMillis()));
        return phrasesPo;
    }

    @Override
    public PhrasesPO buildDeletePo() throws ServiceException {
        return null;
    }

    @Override
    public PhrasesPO buildUpdatePo() throws ServiceException {
        PhrasesPO phrasesPo = BeanUtils.copyObject(this, PhrasesPO.class);
        phrasesPo.setUpdateTime(new Timestamp(System.currentTimeMillis()));
        return phrasesPo;
    }
}

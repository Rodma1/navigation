package com.chen.domain.article;

import com.baomidou.mybatisplus.annotation.TableLogic;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import java.sql.Timestamp;
import java.util.Date;

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
 * @since 2024-07-17
 */
@Getter
@Setter
@TableName("cyz_article")
@ApiModel(value = "CyzArticleBO对象", description = "")
public class CyzArticleBO implements Serializable, BaseBizCommand<CyzArticlePO> {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty("文章地址")
    private String url;

    @ApiModelProperty("文章名称")
    private String name;

    @ApiModelProperty("完成状态 0 未完成 1已完成")
    private String state;

    @ApiModelProperty("文章类别id")
    private Integer categoryId;

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

    private Integer id;


    @Override
    public CyzArticlePO buildInsertPo() throws ServiceException {
        CyzArticlePO cyzArticlePo = BeanUtils.copyObject(this, CyzArticlePO.class);
        cyzArticlePo.setCreateTime(new Timestamp(System.currentTimeMillis()));
        return cyzArticlePo;
    }

    @Override
    public CyzArticlePO buildDeletePo() throws ServiceException {
        return null;
    }

    @Override
    public CyzArticlePO buildUpdatePo() throws ServiceException {
        CyzArticlePO cyzArticlePo = BeanUtils.copyObject(this, CyzArticlePO.class);
        cyzArticlePo.setUpdateTime(new Timestamp(System.currentTimeMillis()));
        return cyzArticlePo;
    }
}

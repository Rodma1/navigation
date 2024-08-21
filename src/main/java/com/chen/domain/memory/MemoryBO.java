package com.chen.domain.memory;

import com.baomidou.mybatisplus.annotation.TableLogic;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import java.sql.Timestamp;
import java.util.Date;

import com.chen.common.config.mybatisplus.core.command.BaseBizCommand;
import com.chen.common.exception.ServiceException;
import com.chen.common.utils.BeanUtils;
import com.chen.domain.articledomain.article.CyzArticlePO;
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
 * @since 2024-08-15
 */
@Getter
@Setter
@TableName("cyz_memory")
@ApiModel(value = "MemoryBO对象", description = "")
public class MemoryBO implements Serializable, BaseBizCommand<MemoryPO> {

    private static final long serialVersionUID = 1L;

    private Long id;

    @ApiModelProperty("内容")
    private String content;

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


    @Override
    public MemoryPO buildInsertPo() throws ServiceException {
        MemoryPO memoryPo = BeanUtils.copyObject(this, MemoryPO.class);
        memoryPo.setCreateTime(new Timestamp(System.currentTimeMillis()));
        return memoryPo;
    }

    @Override
    public MemoryPO buildDeletePo() throws ServiceException {
        return null;
    }

    @Override
    public MemoryPO buildUpdatePo() throws ServiceException {
        MemoryPO memoryPo = BeanUtils.copyObject(this, MemoryPO.class);
        memoryPo.setUpdateTime(new Timestamp(System.currentTimeMillis()));
        return memoryPo;
    }
}

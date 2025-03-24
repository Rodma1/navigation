package com.chen.domain.memory;

import com.baomidou.mybatisplus.annotation.TableLogic;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import java.sql.Timestamp;
import java.util.Date;

import com.chen.config.mybatisplus.core.command.BaseBizCommand;
import com.chen.common.exception.ServiceException;
import com.chen.utils.BeanUtils;
import com.chen.domain.articledomain.article.CyzArticlePO;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.media.Schema;
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
@Schema(name   = "MemoryBO对象", description = "")
public class MemoryBO implements Serializable, BaseBizCommand<MemoryPO> {

    private static final long serialVersionUID = 1L;

    private Long id;

    @Schema(name ="内容")
    private String content;

    @Schema(name ="创建时间")
    private Date createTime;

    @Schema(name ="更新时间")
    private Date updateTime;

    @Schema(name ="删除标志(0代表存在 1代表删除)")
    @TableLogic
    private String delFlag;

    @Schema(name ="创建者")
    private String createBy;

    @Schema(name ="更新者")
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

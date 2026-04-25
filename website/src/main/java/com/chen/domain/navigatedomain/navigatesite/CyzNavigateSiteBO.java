package com.chen.domain.navigatedomain.navigatesite;

import com.chen.config.mybatisplus.core.command.BaseBizCommand;
import com.chen.common.exception.ServiceException;
import com.chen.utils.BeanUtils;
import java.io.Serializable;
import java.sql.Timestamp;
import java.util.Date;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Getter;
import lombok.Setter;

/**
 * <p>
 *
 * </p>
 *
 * @author 神的孩子都在歌唱
 * @since 2023-09-25
 */
@Getter
@Setter
@Schema(name = "CyzNavigateSiteBO对象", description = "")
public class CyzNavigateSiteBO implements Serializable, BaseBizCommand<CyzNavigateSitePO> {

    private static final long serialVersionUID = 1L;

    private Long id;

    @Schema(name = "类别id")
    private Long categoryId;

    @Schema(name = "网站标题")
    private String name;

    @Schema(name = "图片")
    private String image;

    @Schema(name = "描述")
    private String description;

    @Schema(name = "网站路径")
    private String url;

    @Schema(name = "创建时间")
    private Date createTime;

    @Schema(name = "更新时间")
    private Date updateTime;

    @Schema(name = "创建者")
    private String createBy;

    @Schema(name = "更新者")
    private String updateBy;

    @Override
    public CyzNavigateSitePO buildInsertPo() throws ServiceException {
        CyzNavigateSitePO po = BeanUtils.copyObject(this, CyzNavigateSitePO.class);
        po.setCreateTime(new Timestamp(System.currentTimeMillis()));
        return po;
    }

    @Override
    public CyzNavigateSitePO buildDeletePo() throws ServiceException {
        return null;
    }

    @Override
    public CyzNavigateSitePO buildUpdatePo() throws ServiceException {
        CyzNavigateSitePO po = BeanUtils.copyObject(this, CyzNavigateSitePO.class);
        po.setUpdateTime(new Timestamp(System.currentTimeMillis()));
        return po;
    }
}

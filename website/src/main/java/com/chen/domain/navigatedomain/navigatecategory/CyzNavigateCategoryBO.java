package com.chen.domain.navigatedomain.navigatecategory;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import com.chen.config.mybatisplus.core.command.BaseBizCommand;
import com.chen.common.exception.ServiceException;
import com.chen.utils.BeanUtils;
import com.chen.common.category.BaseCategory;
import com.chen.domain.navigatedomain.navigatesite.CyzNavigateSiteBO;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Getter;
import lombok.Setter;

/**
 * <p>
 *
 * </p>
 *
 * @author 神的孩子都在歌唱
 * @since 2023-09-22
 */
@Getter
@Setter
@Schema(name = "CyzNavigateCategoryBO对象", description = "")
public class CyzNavigateCategoryBO extends BaseCategory implements Serializable, BaseBizCommand<CyzNavigateCategoryPO> {

    private static final long serialVersionUID = 1L;

    @Schema(name = "创建时间")
    private Date createTime;

    @Schema(name = "更新时间")
    private Date updateTime;

    private String delFlag;

    @Schema(name = "网站")
    private List<CyzNavigateSiteBO> sites;

    @Override
    public CyzNavigateCategoryPO buildInsertPo() throws ServiceException {
        CyzNavigateCategoryPO po = BeanUtils.copyObject(this, CyzNavigateCategoryPO.class);
        po.setCreateTime(new Timestamp(System.currentTimeMillis()));
        return po;
    }

    @Override
    public CyzNavigateCategoryPO buildDeletePo() throws ServiceException {
        return null;
    }

    @Override
    public CyzNavigateCategoryPO buildUpdatePo() throws ServiceException {
        CyzNavigateCategoryPO po = BeanUtils.copyObject(this, CyzNavigateCategoryPO.class);
        po.setUpdateTime(new Timestamp(System.currentTimeMillis()));
        return po;
    }
}

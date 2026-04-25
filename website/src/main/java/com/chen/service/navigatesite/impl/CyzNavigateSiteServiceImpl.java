package com.chen.service.navigatesite.impl;

import com.chen.mapper.CyzNavigateSiteMapper;
import com.chen.domain.navigatedomain.navigatesite.CyzNavigateSitePO;
import com.chen.domain.navigatedomain.navigatesite.CyzNavigateSiteBO;
import com.chen.common.exception.ServiceException;
import org.springframework.stereotype.Service;
import com.chen.config.mybatisplus.core.ServicePlusImpl;
import com.chen.service.navigatesite.CyzNavigateSiteService;

import java.util.List;

/**
 * @author: 神的孩子都在歌唱
 * @date: 2023-09-25
 * @description:  业务层接口实现类
 */
@Service
public class CyzNavigateSiteServiceImpl extends ServicePlusImpl<CyzNavigateSiteMapper, CyzNavigateSitePO, CyzNavigateSiteBO> implements CyzNavigateSiteService {

    @Override
    public void insert(CyzNavigateSiteBO bo) {
        try {
            boolean save = this.save(bo.buildInsertPo());
            if (!save) {
                throw new ServiceException("新增失败");
            }
        } catch (Exception e) {
            throw new ServiceException("新增失败: " + e.getMessage());
        }
    }

    @Override
    public void update(CyzNavigateSiteBO bo) {
        try {
            boolean update = this.updateById(bo.buildUpdatePo());
            if (!update) {
                throw new ServiceException("更新失败");
            }
        } catch (ServiceException e) {
            throw new ServiceException(e);
        }
    }

    @Override
    public Boolean delete(List<Long> ids) {
        try {
            boolean remove = this.removeByIds(ids);
            if (!remove) {
                throw new ServiceException("删除失败");
            }
        } catch (ServiceException e) {
            throw new ServiceException(e);
        }
        return true;
    }
}

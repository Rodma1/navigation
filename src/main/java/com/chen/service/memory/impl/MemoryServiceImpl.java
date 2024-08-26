package com.chen.service.memory.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.chen.common.config.mybatisplus.core.TableDataInfo;
import com.chen.common.config.mybatisplus.page.PagePlus;
import com.chen.common.config.mybatisplus.page.PageRequest;
import com.chen.common.exception.ServiceException;
import com.chen.common.utils.StringUtils;
import com.chen.common.utils.page.PageUtils;
import com.chen.domain.memory.*;
import com.chen.mapper.MemoryMapper;
import org.springframework.stereotype.Service;
import com.chen.common.config.mybatisplus.core.ServicePlusImpl;
import com.chen.service.memory.MemoryService;

import java.util.List;

/**
 * @author: 神的孩子都在歌唱
 * @date: 2024-08-15
 * @description:  业务层接口实现类
 */
@Service
public class MemoryServiceImpl extends ServicePlusImpl<MemoryMapper, MemoryPO, MemoryDTO> implements MemoryService {


    @Override
    public TableDataInfo<MemoryDTO> page(MemoryPagesQuery pagesQuery) {
        LambdaQueryWrapper<MemoryPO> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.like(StringUtils.isNotBlank(pagesQuery.getContent()),MemoryPO::getContent,pagesQuery.getContent());
        PagePlus<MemoryPO, MemoryDTO> pagedBo= this.pageBo(PageUtils.buildPagePlus(new PageRequest.Builder(pagesQuery.getPageNum(), pagesQuery.getPageSize()).build()),queryWrapper);

        return PageUtils.buildDataInfo(pagedBo);
    }

    @Override
    public void insert(MemoryBO memoryBo) {
        try {
            MemoryPO memoryPo = memoryBo.buildInsertPo();
            boolean save = this.save(memoryPo);
            if (!save) {
                throw new ServiceException("新增失败");
            }
        } catch (Exception e) {
            throw new ServiceException("新增失败" + e.getMessage());
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

    @Override
    public void update(MemoryBO memoryBo) {
        try {
            boolean update = this.updateById(memoryBo.buildUpdatePo());
            if (!update) {
                throw new ServiceException("更新失败");
            }
        } catch (ServiceException e) {
            throw new ServiceException(e);
        }
    }
}

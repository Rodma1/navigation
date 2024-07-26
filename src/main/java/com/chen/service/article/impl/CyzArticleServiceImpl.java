package com.chen.service.article.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.chen.common.config.mybatisplus.core.TableDataInfo;
import com.chen.common.config.mybatisplus.page.PagePlus;
import com.chen.common.config.mybatisplus.page.PageRequest;
import com.chen.common.exception.ServiceException;
import com.chen.common.utils.StringUtils;
import com.chen.common.utils.page.PageUtils;
import com.chen.domain.article.*;
import com.chen.mapper.CyzArticleMapper;
import org.springframework.stereotype.Service;
import com.chen.common.config.mybatisplus.core.ServicePlusImpl;
import com.chen.service.article.CyzArticleService;

/**
 * @author: 神的孩子都在歌唱
 * @date: 2024-07-17
 * @description:  业务层接口实现类
 */
@Service
public class CyzArticleServiceImpl extends ServicePlusImpl<CyzArticleMapper, CyzArticlePO, CyzArticleDTO> implements CyzArticleService {

    @Override
    public TableDataInfo<CyzArticleDTO> page(CyzArticlePagesQuery pagesQuery) {
        LambdaQueryWrapper<CyzArticlePO> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.like(StringUtils.isNotBlank(pagesQuery.getName()),CyzArticlePO::getName,pagesQuery.getName());
        queryWrapper.orderByDesc(CyzArticlePO:: getCreateTime);
        return PageUtils.buildDataInfo(this.pageBo(PageUtils.buildPagePlus(new PageRequest.Builder(pagesQuery.getPageNum(), pagesQuery.getPageSize()).build())));
    }

    @Override
    public void insert(CyzArticleBO cyzArticleBO) {
        boolean save = this.save(cyzArticleBO.buildInsertPo());
        if (!save) {
            throw new ServiceException("新增失败");
        }
    }

    @Override
    public void delete(String id) {
        boolean remove = this.removeById(id);
        if (!remove) {
            throw new ServiceException("删除失败");
        }
    }

    @Override
    public void update(CyzArticleBO cyzArticleBO) {
        boolean update = this.save(cyzArticleBO.buildUpdatePo());
        if (!update) {
            throw new ServiceException("更新失败");
        }
    }


}

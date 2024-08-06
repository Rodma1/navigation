package com.chen.service.article.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.chen.common.config.mybatisplus.core.TableDataInfo;
import com.chen.common.config.mybatisplus.page.PagePlus;
import com.chen.common.config.mybatisplus.page.PageRequest;
import com.chen.common.exception.ServiceException;
import com.chen.common.utils.StringUtils;
import com.chen.common.utils.page.PageUtils;
import com.chen.domain.article.*;
import com.chen.domain.articlecategory.ArticleCategoryPO;
import com.chen.mapper.ArticleCategoryMapper;
import com.chen.mapper.CyzArticleMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import com.chen.common.config.mybatisplus.core.ServicePlusImpl;
import com.chen.service.article.CyzArticleService;

import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

/**
 * @author: 神的孩子都在歌唱
 * @date: 2024-07-17
 * @description:  业务层接口实现类
 */
@RequiredArgsConstructor
@Service
public class CyzArticleServiceImpl extends ServicePlusImpl<CyzArticleMapper, CyzArticlePO, CyzArticleDTO> implements CyzArticleService {

    private final ArticleCategoryMapper categoryService;
    @Override
    public TableDataInfo<CyzArticleDTO> page(CyzArticlePagesQuery pagesQuery) {
        LambdaQueryWrapper<CyzArticlePO> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.like(StringUtils.isNotBlank(pagesQuery.getName()),CyzArticlePO::getName,pagesQuery.getName());
        queryWrapper.orderByDesc(CyzArticlePO:: getCreateTime);
        PagePlus<CyzArticlePO, CyzArticleDTO> pagedBo= this.pageBo(PageUtils.buildPagePlus(new PageRequest.Builder(pagesQuery.getPageNum(), pagesQuery.getPageSize()).build()));
        this.parameterConversion(pagedBo.getRecordsVo());
        return PageUtils.buildDataInfo(pagedBo);
    }

    /**
     * 转化特定参数
     * @param articleDtoS 文章
     */
    private void parameterConversion(List<CyzArticleDTO> articleDtoS) {
        Map<Long, String> collect = categoryService.selectList(new LambdaQueryWrapper<>()).stream().collect(Collectors.toMap(ArticleCategoryPO::getId, ArticleCategoryPO::getName));
        articleDtoS.forEach(item->{
            item.setCategoryName(collect.get(item.getCategoryId()));
        });
    }

    @Override
    public void insert(CyzArticleBO cyzArticleBO) {
        boolean save = this.save(cyzArticleBO.buildInsertPo());
        if (!save) {
            throw new ServiceException("新增失败");
        }
    }

    @Override
    public Boolean delete(Long id) {
        boolean remove = this.removeById(id);
        if (!remove) {
            throw new ServiceException("删除失败");
        }
        return true;
    }

    @Override
    public void update(CyzArticleBO cyzArticleBO) {
        boolean update = this.save(cyzArticleBO.buildUpdatePo());
        if (!update) {
            throw new ServiceException("更新失败");
        }
    }


}

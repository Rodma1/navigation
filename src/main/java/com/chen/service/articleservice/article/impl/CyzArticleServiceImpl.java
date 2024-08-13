package com.chen.service.articleservice.article.impl;

import cn.hutool.core.util.ObjectUtil;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.chen.common.config.mybatisplus.core.TableDataInfo;
import com.chen.common.config.mybatisplus.page.PagePlus;
import com.chen.common.config.mybatisplus.page.PageRequest;
import com.chen.common.exception.ServiceException;
import com.chen.common.utils.StringUtils;
import com.chen.common.utils.page.PageUtils;
import com.chen.domain.articledomain.article.CyzArticleBO;
import com.chen.domain.articledomain.article.CyzArticleDTO;
import com.chen.domain.articledomain.article.CyzArticlePO;
import com.chen.domain.articledomain.article.CyzArticlePagesQuery;
import com.chen.domain.articledomain.articlebindcategory.ArticleBindCategoryBO;
import com.chen.domain.articledomain.articlebindcategory.ArticleBindCategoryPO;
import com.chen.domain.articledomain.articlecategory.ArticleCategoryPO;
import com.chen.mapper.ArticleCategoryMapper;
import com.chen.mapper.CyzArticleMapper;
import com.chen.service.articleservice.articlebindcategory.ArticleBindCategoryService;
import com.github.yulichang.wrapper.MPJLambdaWrapper;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import com.chen.common.config.mybatisplus.core.ServicePlusImpl;
import com.chen.service.articleservice.article.CyzArticleService;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
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

    private final ArticleBindCategoryService articleBindCategoryService;

    @Override
    public TableDataInfo<CyzArticleDTO> page(CyzArticlePagesQuery pagesQuery) {
        MPJLambdaWrapper<CyzArticlePO> queryWrapper = new MPJLambdaWrapper<>();
        queryWrapper.like(StringUtils.isNotBlank(pagesQuery.getName()),CyzArticlePO::getName,pagesQuery.getName());
        if (ObjectUtil.isNotNull(pagesQuery.getCategoryId())) {
            queryWrapper.leftJoin(ArticleBindCategoryPO.class, ArticleBindCategoryPO::getArticleId,CyzArticlePO::getId);
            queryWrapper.leftJoin(ArticleCategoryPO.class, ArticleCategoryPO::getId,ArticleBindCategoryPO::getCategoryId);
            queryWrapper.eq(ObjectUtil.isNotNull(pagesQuery.getCategoryId()),ArticleCategoryPO::getId,pagesQuery.getCategoryId());
        }

        queryWrapper.orderByDesc(CyzArticlePO:: getCreateTime);
        PagePlus<CyzArticlePO, CyzArticleDTO> pagedBo= this.pageBo(PageUtils.buildPagePlus(new PageRequest.Builder(pagesQuery.getPageNum(), pagesQuery.getPageSize()).build()),queryWrapper);
        pagedBo.getRecordsVo().forEach(this::parameterConversion);
        return PageUtils.buildDataInfo(pagedBo);
    }

    /**
     * 转化特定参数
     * @param articleDtoS 文章
     */
    private void parameterConversion(CyzArticleDTO articleDtoS) {
        Map<Long, String> collect = categoryService.selectList(new LambdaQueryWrapper<>()).stream().collect(Collectors.toMap(ArticleCategoryPO::getId, ArticleCategoryPO::getName));
        List<ArticleBindCategoryBO> articleBindCategoryBoS = articleBindCategoryService.listBo(new LambdaQueryWrapper<ArticleBindCategoryPO>().eq(ArticleBindCategoryPO::getArticleId, articleDtoS.getId()));
        articleDtoS.setCategoryIds(articleBindCategoryBoS.stream().map(ArticleBindCategoryBO::getCategoryId).collect(Collectors.toList()));
        articleDtoS.setCategoryName(articleBindCategoryBoS.stream().map(item -> collect.get(item.getCategoryId())).collect(Collectors.joining(", ")));
    }

    @Transactional(rollbackFor = ServiceException.class)
    @Override
    public void insert(CyzArticleBO cyzArticleBO) {
        try {
            CyzArticlePO cyzArticlePo = cyzArticleBO.buildInsertPo();
            boolean save = this.save(cyzArticlePo);
            if (!save) {
                throw new ServiceException("新增失败");
            }
            this.articleBindCategory(cyzArticleBO.getCategoryIds(), cyzArticlePo.getId());
        } catch (Exception e) {
            throw new ServiceException("新增失败" + e.getMessage());
        }

    }

    @Transactional(rollbackFor = ServiceException.class)
    @Override
    public Boolean delete(Long id) {

        try {
            boolean remove = this.removeById(id);
            if (!remove) {
                throw new ServiceException("删除失败");
            }
            articleBindCategoryService.remove(new LambdaQueryWrapper<ArticleBindCategoryPO>().eq(ArticleBindCategoryPO::getArticleId,id));
        } catch (ServiceException e) {
            throw new ServiceException(e);
        }
        return true;

    }

    @Override
    public void update(CyzArticleBO cyzArticleBO) {

        try {
            boolean update = this.updateById(cyzArticleBO.buildUpdatePo());
            if (!update) {
                throw new ServiceException("更新失败");
            }
            articleBindCategoryService.remove(new LambdaQueryWrapper<ArticleBindCategoryPO>().eq(ArticleBindCategoryPO::getArticleId,cyzArticleBO.getId()));
            this.articleBindCategory(cyzArticleBO.getCategoryIds(), cyzArticleBO.getId());
        } catch (ServiceException e) {
            throw new ServiceException(e);
        }
    }


    private void articleBindCategory(List<Long> categoryIds,Long articleId) {
        ArrayList<ArticleBindCategoryPO> articleBindCategoryPoS = new ArrayList<>();

        categoryIds.forEach(item-> {
            ArticleBindCategoryPO articleBindCategoryPo = new ArticleBindCategoryPO();
            articleBindCategoryPo.setCategoryId(item);
            articleBindCategoryPo.setArticleId(articleId);
            articleBindCategoryPoS.add(articleBindCategoryPo);

        });
        articleBindCategoryService.saveBatch(articleBindCategoryPoS);
    }


}

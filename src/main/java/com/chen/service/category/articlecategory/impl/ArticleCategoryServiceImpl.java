package com.chen.service.category.articlecategory.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.chen.common.exception.ServiceException;
import com.chen.mapper.ArticleCategoryMapper;
import com.chen.domain.articlecategory.ArticleCategoryPO;
import com.chen.domain.articlecategory.ArticleCategoryBO;
import com.chen.service.category.articlecategory.ArticleCategoryService;
import com.chen.service.category.common.impl.AbstractCategoryService;
import org.springframework.stereotype.Service;
import com.chen.common.config.mybatisplus.core.ServicePlusImpl;

import java.util.List;

/**
 * @author: 神的孩子都在歌唱
 * @date: 2024-07-26
 * @description:  业务层接口实现类
 */
@Service
public class ArticleCategoryServiceImpl extends ServicePlusImpl<ArticleCategoryMapper, ArticleCategoryPO, ArticleCategoryBO>  implements ArticleCategoryService {


    private final AbstractCategoryService<ArticleCategoryBO> categoryServiceTemplate = new AbstractCategoryService<ArticleCategoryBO>() {


        @Override
        protected List<ArticleCategoryBO> categorieList() {
            return ArticleCategoryServiceImpl.this.listBo();
        }

        @Override
        protected void setParam(ArticleCategoryBO category) {

        };


    };


    @Override
    public List<ArticleCategoryBO> getAllCategories() {
        return categoryServiceTemplate.getAllCategories();
    }

    @Override
    public ArticleCategoryBO getCategoryById(Long id) {
        return this.getBoById(id);
    }

    @Override
    public void createCategory(ArticleCategoryBO category) {
        ArticleCategoryPO articleCategoryPO = category.buildInsertPo();
        boolean save = this.save(articleCategoryPO);
        if (!save) {
            throw new ServiceException("创建类别失败");
        }
    }

    @Override
    public void updateCategory(ArticleCategoryBO category) {
        boolean update = this.updateById(category.buildUpdatePo());
        if (!update) {
            throw new ServiceException("更新类别失败");
        }
    }

    @Override
    public void deleteCategory(Long id) {
        boolean remove = this.removeById(id);
        if (!remove) {
            throw new ServiceException("删除类别失败");
        }
    }
}

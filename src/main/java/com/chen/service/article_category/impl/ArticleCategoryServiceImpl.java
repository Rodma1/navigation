package com.chen.service.article_category.impl;

import com.chen.domain.common.category.BaseCategory;
import com.chen.mapper.ArticleCategoryMapper;
import com.chen.domain.article_category.ArticleCategoryPO;
import com.chen.domain.article_category.ArticleCategoryBO;
import com.chen.domain.article_category.ArticleCategoryVO;
import com.chen.service.common.CategoryService;
import com.chen.service.common.impl.AbstractCategoryService;
import org.springframework.stereotype.Service;
import com.chen.common.config.mybatisplus.core.ServicePlusImpl;
import com.chen.service.article_category.ArticleCategoryService;

import java.util.List;

/**
 * @author: 神的孩子都在歌唱
 * @date: 2024-07-26
 * @description:  业务层接口实现类
 */
@Service
public class ArticleCategoryServiceImpl extends ServicePlusImpl<ArticleCategoryMapper, ArticleCategoryPO, ArticleCategoryBO>  implements ArticleCategoryService{


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
        return null;
    }

    @Override
    public void createCategory(ArticleCategoryBO category) {

    }

    @Override
    public void updateCategory(ArticleCategoryBO category) {

    }

    @Override
    public void deleteCategory(Long id) {

    }
}

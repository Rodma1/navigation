package com.chen.service.category.articlecategory.impl;

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

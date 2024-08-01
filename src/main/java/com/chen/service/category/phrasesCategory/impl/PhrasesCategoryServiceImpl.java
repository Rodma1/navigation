package com.chen.service.category.phrasesCategory.impl;

import com.chen.common.exception.ServiceException;
import com.chen.domain.articlecategory.ArticleCategoryBO;
import com.chen.mapper.PhrasesCategoryMapper;
import com.chen.domain.phrasesCategory.PhrasesCategoryPO;
import com.chen.domain.phrasesCategory.PhrasesCategoryBO;
import com.chen.service.category.articlecategory.impl.ArticleCategoryServiceImpl;
import com.chen.service.category.common.impl.AbstractCategoryService;
import com.chen.service.category.phrasesCategory.PhrasesCategoryService;
import org.springframework.stereotype.Service;
import com.chen.common.config.mybatisplus.core.ServicePlusImpl;

import java.util.List;

/**
 * @author: 神的孩子都在歌唱
 * @date: 2024-08-01
 * @description:  业务层接口实现类
 */
@Service
public class PhrasesCategoryServiceImpl extends ServicePlusImpl<PhrasesCategoryMapper, PhrasesCategoryPO, PhrasesCategoryBO> implements PhrasesCategoryService {

    private final AbstractCategoryService<PhrasesCategoryBO> categoryServiceTemplate = new AbstractCategoryService<PhrasesCategoryBO>() {

        @Override
        protected List<PhrasesCategoryBO> categorieList() {
            return PhrasesCategoryServiceImpl.this.listBo();
        }

        @Override
        protected void setParam(PhrasesCategoryBO category) {
        };


    };

    @Override
    public List<PhrasesCategoryBO> getAllCategories() {
        return categoryServiceTemplate.getAllCategories();
    }

    @Override
    public PhrasesCategoryBO getCategoryById(Long id) {
        return this.getBoById(id);
    }

    @Override
    public void createCategory(PhrasesCategoryBO category) {
        boolean save = this.save(category.buildInsertPo());
        if (!save) {
            throw new ServiceException("创建类别失败");
        }
    }

    @Override
    public void updateCategory(PhrasesCategoryBO category) {
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

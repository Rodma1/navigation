package com.chen.service.category;

import com.chen.domain.common.category.BaseCategory;
import com.chen.service.category.articlecategory.ArticleCategoryService;
import com.chen.service.category.common.CategoryService;
import com.chen.service.category.phrasesCategory.PhrasesCategoryService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

/**
 * @Author chenyunzhi
 * @DATE 2024/7/31 14:32
 * @Description:
 */
@RequiredArgsConstructor
@Service
public class CategoryServiceFactoryImpl implements CategoryServiceFactory{

    private final ArticleCategoryService articleCategoryService;

    private final PhrasesCategoryService phrasesCategoryService;
    @Override
    @SuppressWarnings("unchecked")
    public <T extends BaseCategory> CategoryService<T> getService(String categoryType) {
        switch (categoryType) {
            case "ARTICLE":
                return (CategoryService<T>) articleCategoryService;
            case "PHRASES":
                return (CategoryService<T>) phrasesCategoryService;
            default:
                return null;
        }
    }
}

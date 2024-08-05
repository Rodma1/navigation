package com.chen.service.category;

import com.chen.domain.articlecategory.ArticleCategoryBO;
import com.chen.domain.common.category.BaseCategory;
import com.chen.domain.common.category.CommandCategory;
import com.chen.domain.phrasesCategory.PhrasesCategoryBO;
import com.chen.service.category.articlecategory.ArticleCategoryService;
import com.chen.service.category.common.CategoryService;
import com.chen.service.category.phrasesCategory.PhrasesCategoryService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import javax.annotation.PostConstruct;
import java.util.HashMap;
import java.util.Map;

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

    private final Map<Class<? extends BaseCategory>, CategoryService<? extends BaseCategory>> services = new HashMap<>();

    @PostConstruct
    public void init() {
        services.put(ArticleCategoryBO.class, articleCategoryService);
        services.put(PhrasesCategoryBO.class, phrasesCategoryService);
    }


    @Override
    @SuppressWarnings("unchecked")
    public <T extends CommandCategory> CategoryService<T> getService(String categoryType) {
        switch (categoryType) {
            case "ARTICLE":
                return (CategoryService<T>) this.getService(ArticleCategoryBO.class);
            case "PHRASES":
                return (CategoryService<T>) phrasesCategoryService;
            default:
                return null;
        }
    }

    @SuppressWarnings("unchecked")
    public <T extends CommandCategory> CategoryService<T> getService(Class<T> categoryType) {
        CategoryService<? extends CommandCategory> service = services.get(categoryType);
        if (service == null) {
            throw new IllegalArgumentException("Unknown category type: " + categoryType.getName());
        }
        return (CategoryService<T>) service;
    }

}

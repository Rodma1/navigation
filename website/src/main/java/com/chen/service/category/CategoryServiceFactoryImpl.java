package com.chen.service.category;

import com.chen.domain.articledomain.articlecategory.ArticleCategoryBO;
import com.chen.common.category.CommandCategory;
import com.chen.domain.phrasesdomain.phrasesCategory.PhrasesCategoryBO;
import com.chen.domain.navigatedomain.navigatecategory.CyzNavigateCategoryBO;
import com.chen.service.category.articlecategory.ArticleCategoryService;
import com.chen.service.category.navigatecategory.CyzNavigateCategoryService;
import com.chen.common.category.CategoryService;
import com.chen.service.category.phrasesCategory.PhrasesCategoryService;
import jakarta.annotation.PostConstruct;
import lombok.RequiredArgsConstructor;
import com.chen.domain.filecategory.FileCategoryBo;
import com.chen.service.FileCategoryService;
import org.springframework.stereotype.Service;

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

    private final FileCategoryService fileCategoryService;

    private final CyzNavigateCategoryService navigateCategoryService;

    private final Map<Class<? extends CommandCategory>, CategoryService<? extends CommandCategory>> services = new HashMap<>();

    @PostConstruct
    public void init() {
        services.put(ArticleCategoryBO.class, articleCategoryService);
        services.put(PhrasesCategoryBO.class, phrasesCategoryService);
        services.put(FileCategoryBo.class, fileCategoryService);
        services.put(CyzNavigateCategoryBO.class, navigateCategoryService);

    }

    @Override
    @SuppressWarnings("unchecked")
    public <T extends CommandCategory> CategoryService<T> getService(Class<T> categoryType) {
        CategoryService<? extends CommandCategory> service = services.get(categoryType);
        if (service == null) {
            throw new IllegalArgumentException("Unknown category type: " + categoryType.getName());
        }
        return (CategoryService<T>) service;
    }
    @Override
    @SuppressWarnings("unchecked")
    public <T extends CommandCategory> Class<T> getDataClass(String categoryType) {
        switch (categoryType) {
            case "ARTICLE":
                return (Class<T>) ArticleCategoryBO.class;
            case "PHRASES":
                return (Class<T>) PhrasesCategoryBO.class;
            case "FILE":
                return (Class<T>) FileCategoryBo.class;
            case "NAVIGATE":
                return (Class<T>) CyzNavigateCategoryBO.class;
            default:
                return null;
        }
    }


}

package com.chen.service.category;

import com.chen.domain.common.category.BaseCategory;
import com.chen.service.article_category.ArticleCategoryService;
import com.chen.service.common.CategoryService;
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
    @Override
    @SuppressWarnings("unchecked")
    public <T extends BaseCategory> CategoryService<T> getService(String categoryType) {
        switch (categoryType) {
            case "ARTICLE":
                return (CategoryService<T>) articleCategoryService;
            case "NAVIGATE":
            default:
                return null;
        }
    }
}

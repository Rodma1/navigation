package com.chen.service.category.common.impl;

import com.chen.domain.common.category.BaseCategory;

import java.util.ArrayDeque;
import java.util.Deque;
import java.util.List;
import java.util.Map;
import java.util.function.Function;
import java.util.stream.Collectors;

/**
 * @Author chenyunzhi
 * @DATE 2024/7/29 14:02
 * @Description: 类别公共方法 模板设计模式
 */
public abstract class AbstractCategoryService<T extends BaseCategory>{

    public List<T> getAllCategories() {
        List<T> categories = categorieList();
        Map<Long, T> categoryMap = categories.stream().collect(Collectors.toMap(BaseCategory::getId, Function.identity()));
        List<T> categoryList = categories.stream().filter(c -> c.getParentId() == null || c.getParentId() == 0).collect(Collectors.toList());
        categoryList.forEach(c -> buildSubTree(categoryMap, c));
        return categoryList;
    }

    private void buildSubTree(Map<Long, T> categoryMap, T category) {
        Deque<T> stack = new ArrayDeque<>();
        stack.push(category);
        while (!stack.isEmpty()) {
            T currentCategory = stack.pop();
            List<T> subCategories = categoryMap.values().stream()
                    .filter(sub -> sub.getParentId() != null && sub.getParentId().equals(currentCategory.getId()))
                    .collect(Collectors.toList());
            currentCategory.setChildren(subCategories);
            setParam(currentCategory);
            stack.addAll(subCategories);
        }
    }

    /**
     * 子类实现： 获取列表
     */
    protected abstract List<T> categorieList();

    /**
     * 子类有需要就实现：设置其他参数
     */
    protected abstract void setParam(T category);
}

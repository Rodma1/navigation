package com.chen.service.common.impl;

import com.chen.domain.common.category.BaseCategory;
import com.chen.service.common.CategoryService;

import java.util.ArrayDeque;
import java.util.Deque;
import java.util.List;
import java.util.Map;
import java.util.function.Function;
import java.util.stream.Collectors;

/**
 * @Author chenyunzhi
 * @DATE 2024/7/29 14:02
 * @Description:
 */
public abstract class AbstractCategoryService<T extends BaseCategory> implements CategoryService<T> {

    @Override
    public List<T> getAllCategories() {
        List<T> categories = listBo();
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
    protected abstract List<T> listBo();

    /**
     * 子类有需要就实现：设置其他参数
     */
    protected abstract void setParam(T category);
}

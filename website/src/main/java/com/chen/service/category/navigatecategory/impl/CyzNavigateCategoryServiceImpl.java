package com.chen.service.category.navigatecategory.impl;

import cn.hutool.core.util.ObjectUtil;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.chen.domain.navigatedomain.navigatecategory.CyzNavigateCategoryBO;
import com.chen.domain.navigatedomain.navigatecategory.CyzNavigateCategoryDTO;
import com.chen.domain.navigatedomain.navigatesite.CyzNavigateSiteBO;
import com.chen.domain.navigatedomain.navigatesite.CyzNavigateSitePO;
import com.chen.domain.navigatedomain.navigatecategory.CyzNavigateCategoryPO;
import com.chen.mapper.CyzNavigateCategoryMapper;
import com.chen.service.navigatesite.CyzNavigateSiteService;
import com.chen.common.category.AbstractCategoryService;
import com.chen.common.exception.ServiceException;
import com.chen.utils.BeanUtils;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import com.chen.config.mybatisplus.core.ServicePlusImpl;
import com.chen.service.category.navigatecategory.CyzNavigateCategoryService;

import java.util.List;

/**
 * @author: 神的孩子都在歌唱
 * @date: 2023-09-22
 * @description:  业务层接口实现类
 */
@RequiredArgsConstructor
@Service
public class CyzNavigateCategoryServiceImpl extends ServicePlusImpl<CyzNavigateCategoryMapper, CyzNavigateCategoryPO, CyzNavigateCategoryBO> implements CyzNavigateCategoryService {

    private final CyzNavigateSiteService navigateSiteService;

    private final AbstractCategoryService<CyzNavigateCategoryBO> categoryServiceTemplate = new AbstractCategoryService<CyzNavigateCategoryBO>() {
        @Override
        protected List<CyzNavigateCategoryBO> categorieList() {
            return CyzNavigateCategoryServiceImpl.this.listBo();
        }

        @Override
        protected void setParam(CyzNavigateCategoryBO category) {
            List<CyzNavigateSiteBO> sites = navigateSiteService.listBo(
                    new LambdaQueryWrapper<CyzNavigateSitePO>().eq(CyzNavigateSitePO::getCategoryId, category.getId()));
            category.setSites(sites);
        }
    };

    @Override
    public List<CyzNavigateCategoryBO> getAllCategories() {
        return categoryServiceTemplate.getAllCategories();
    }

    @Override
    public List<CyzNavigateCategoryDTO> getAllCategoryTree() {
        List<CyzNavigateCategoryBO> categoryBOList = getAllCategories();
        return BeanUtils.copyList(categoryBOList, CyzNavigateCategoryDTO.class);
    }

    @Override
    public CyzNavigateCategoryBO getCategoryById(Long id) {
        return this.getBoById(id);
    }

    @Override
    public void createCategory(CyzNavigateCategoryBO category) {
        if (ObjectUtil.isNull(category.getParentId())) {
            category.setParentId(0L);
        }
        boolean save = this.save(category.buildInsertPo());
        if (!save) {
            throw new ServiceException("创建类别失败");
        }
    }

    @Override
    public void updateCategory(CyzNavigateCategoryBO category) {
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

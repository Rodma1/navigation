package com.chen.service;

import com.chen.common.category.AbstractCategoryService;
import com.chen.dao.FileCategoryDao;
import com.chen.domain.filecategory.FileCategoryBo;
import com.chen.domain.filecategory.FileCategoryPo;
import com.chen.service.longId.AbstractBaseLongIdService;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FileCategoryServiceImpl extends AbstractBaseLongIdService<FileCategoryPo,FileCategoryBo, FileCategoryDao> implements FileCategoryService{

    protected FileCategoryServiceImpl(FileCategoryDao dao) {
        super(dao);
    }

    private final AbstractCategoryService<FileCategoryBo> categoryServiceTemplate = new AbstractCategoryService<FileCategoryBo>() {

        @Override
        protected List<FileCategoryBo> categorieList() {
            return FileCategoryServiceImpl.this.listBo();
        }

        @Override
        protected void setParam(FileCategoryBo category) {
        };


    };
    @Override
    public List<FileCategoryBo> getAllCategories() {
        return categoryServiceTemplate.getAllCategories();
    }

    @Override
    public FileCategoryBo getCategoryById(Long id) {
        return this.getBoById(id);
    }

    @Override
    public void createCategory(FileCategoryBo category) {

    }

    @Override
    public void updateCategory(FileCategoryBo category) {

    }

    @Override
    public void deleteCategory(Long id) {

    }
}

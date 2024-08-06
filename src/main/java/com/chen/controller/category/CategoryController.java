package com.chen.controller.category;

import com.chen.common.utils.BeanUtils;
import com.chen.common.utils.resultreturn.ResultData;
import com.chen.controller.category.domain.CategoryDeleteCommands;
import com.chen.controller.category.domain.CategoryInsertCommands;
import com.chen.controller.category.domain.CategoryTreeVo;
import com.chen.controller.category.domain.CategoryUpdateCommands;
import com.chen.domain.common.category.BaseCategory;
import com.chen.domain.common.category.CommandCategory;
import com.chen.service.category.CategoryServiceFactory;
import com.chen.service.category.common.CategoryService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @Author chenyunzhi
 * @DATE 2024/7/31 17:32
 * @Description:
 */
@RequiredArgsConstructor
@RestController
@Api(value = "类别接口", tags = "类别接口")
@RequestMapping("/categories")
public class CategoryController {

    private final CategoryServiceFactory categoryServiceFactory;
    @ApiOperation("获取类别树")
    @GetMapping("/getAllCategoryTree/{categoryType}")
    public ResultData<List<? extends BaseCategory>> getAllCategories(@PathVariable String categoryType)  {
        Class<CommandCategory> dataClass = categoryServiceFactory.getDataClass(categoryType);
        CategoryService<CommandCategory> service = categoryServiceFactory.getService(dataClass);
        return ResultData.success(BeanUtils.copyList(service.getAllCategories(), CategoryTreeVo.class));
    }

    @ApiOperation("创建类别")
    @PostMapping("/insert")
    public ResultData<Object> create(@RequestBody CategoryInsertCommands insertCommands)  {
        Class<CommandCategory> dataClass = categoryServiceFactory.getDataClass(insertCommands.getCategoryType());
        CategoryService<CommandCategory> service = categoryServiceFactory.getService(dataClass);
        service.createCategory(BeanUtils.copyObject(insertCommands, dataClass));
        return ResultData.success(true);
    }
    @ApiOperation("更新类别")
    @PostMapping("/update")
    public ResultData<Object> update(@RequestBody CategoryUpdateCommands updateCommands)  {
        Class<CommandCategory> dataClass = categoryServiceFactory.getDataClass(updateCommands.getCategoryType());
        CategoryService<CommandCategory> service = categoryServiceFactory.getService(dataClass);
        service.updateCategory(BeanUtils.copyObject(updateCommands, dataClass));
        return ResultData.success(true);
    }

    @ApiOperation("删除类别")
    @PostMapping("/delete")
    public ResultData<Object> delete(@RequestBody CategoryDeleteCommands deleteCommands)  {
        Class<CommandCategory> dataClass = categoryServiceFactory.getDataClass(deleteCommands.getCategoryType());
        CategoryService<CommandCategory> service = categoryServiceFactory.getService(dataClass);
        service.updateCategory(BeanUtils.copyObject(deleteCommands, dataClass));
        return ResultData.success(true);
    }



}

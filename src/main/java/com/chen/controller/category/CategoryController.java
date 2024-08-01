package com.chen.controller.category;

import com.chen.common.utils.resultreturn.ResultData;
import com.chen.domain.common.category.BaseCategory;
import com.chen.service.category.CategoryServiceFactory;
import com.chen.service.category.common.CategoryService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

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
    @GetMapping("/{categoryType}")
    public ResultData<List<? extends BaseCategory>> getAllCategories(@PathVariable String categoryType)  {
        CategoryService<? extends BaseCategory> service = categoryServiceFactory.getService(categoryType);
        return ResultData.success(service.getAllCategories());
    }

}

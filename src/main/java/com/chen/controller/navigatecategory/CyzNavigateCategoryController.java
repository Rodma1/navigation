package com.chen.controller.navigatecategory;

import com.chen.common.utils.BeanUtils;
import com.chen.common.utils.resultreturn.ResultData;
import com.chen.domain.navigatecategory.CyzNavigateCategoryDTO;
import com.chen.service.navigatecategory.CyzNavigateCategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.*;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;

import java.util.List;

/**
 * @author: 神的孩子都在歌唱
 * @date: 2023-09-22
 * @description: Controller
 */
@RestController
@Api(value = "接口控制器", tags = "导航网站接口")
@RequestMapping("/cyzNavigateCategory")
public class CyzNavigateCategoryController {


    @Autowired
    private CyzNavigateCategoryService navigateCategoryService;

    @ApiOperation("获取网站类别树")
    @GetMapping("/tree")
    public ResultData<List<NavigateCategoryTreeVo>> getAllCategories() {
        List<CyzNavigateCategoryDTO> allCategories = navigateCategoryService.getAllCategories();
        return ResultData.success(BeanUtils.copyList(allCategories,NavigateCategoryTreeVo.class));
    }

    @ApiOperation(value = "分页查询")
    @GetMapping(value = "/pages")
    public ResultData pages() {
        return ResultData.success();
    }

    @ApiOperation(value = "查询")
    @GetMapping(value = "/query")
    public ResultData query() {
        return ResultData.success();
    }

    @ApiOperation(value = "新增")
    @PostMapping(value = "/insert")
    public ResultData insert() {
        return ResultData.success();
    }

    @ApiOperation(value = "删除")
    @DeleteMapping(value = "/delete")
    public ResultData delete() {
        return ResultData.success();
    }

    @ApiOperation(value = "更新")
    @PutMapping(value = "/update")
    public ResultData update() {
        return ResultData.success();
    }
}


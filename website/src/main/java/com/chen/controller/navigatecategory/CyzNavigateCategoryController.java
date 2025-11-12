package com.chen.controller.navigatecategory;

import com.chen.utils.BeanUtils;
import com.chen.utils.resultreturn.ResultData;
import com.chen.controller.navigatecategory.domin.NavigateCategoryTreeVo;
import com.chen.domain.navigatedomain.navigatecategory.CyzNavigateCategoryDTO;
import com.chen.service.category.navigatecategory.CyzNavigateCategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.*;
import io.swagger.v3.oas.annotations.tags.Tag;
import io.swagger.v3.oas.annotations.Operation;

import java.util.List;

/**
 * @author: 神的孩子都在歌唱
 * @date: 2023-09-22
 * @description: Controller
 */
@RestController
@Tag(name = "接口控制器", description ="导航网站接口")
@RequestMapping("/cyzNavigateCategory")
public class CyzNavigateCategoryController {


    @Autowired
    private CyzNavigateCategoryService navigateCategoryService;

    @Operation(summary ="获取网站类别树")
    @GetMapping("/tree")
    public ResultData<List<NavigateCategoryTreeVo>> getAllCategories() {
        List<CyzNavigateCategoryDTO> allCategories = navigateCategoryService.getAllCategories();
        return ResultData.success(BeanUtils.copyList(allCategories,NavigateCategoryTreeVo.class));
    }


    @Operation(summary = "分页查询")
    @GetMapping(value = "/pages")
    public ResultData pages() {
        return ResultData.success();
    }

    @Operation(summary = "查询")
    @GetMapping(value = "/query")
    public ResultData query() {
        return ResultData.success();
    }

    @Operation(summary = "新增")
    @PostMapping(value = "/insert")
    public ResultData insert() {
        return ResultData.success();
    }

    @Operation(summary = "删除")
    @DeleteMapping(value = "/delete")
    public ResultData delete() {
        return ResultData.success();
    }

    @Operation(summary = "更新")
    @PutMapping(value = "/update")
    public ResultData update() {
        return ResultData.success();
    }
}


package com.chen.controller.navigatesite;

import com.chen.utils.resultreturn.ResultData;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.*;
import io.swagger.v3.oas.annotations.tags.Tag;
import io.swagger.v3.oas.annotations.Operation;

/**
 * @author: 神的孩子都在歌唱
 * @date: 2023-09-25
 * @description: Controller
 */
@RestController
@Tag(name = "接口控制器", description ="")
@RequestMapping("/cyzNavigateSite")
public class CyzNavigateSiteController {

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


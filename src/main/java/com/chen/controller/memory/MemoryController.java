package com.chen.controller.memory;

import com.chen.common.utils.resultreturn.ResultData;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.*;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;

/**
 * @author: 神的孩子都在歌唱
 * @date: 2024-08-15
 * @description: Controller
 */
@RestController
@Api(value = "接口控制器", tags = "")
@RequestMapping("/memory")
public class MemoryController {

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


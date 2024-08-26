package com.chen.controller.memory;

import com.chen.common.config.mybatisplus.core.TableDataInfo;
import com.chen.common.utils.BeanUtils;
import com.chen.common.utils.resultreturn.ResultData;
import com.chen.controller.memory.domain.MemoryDeleteCommand;
import com.chen.controller.memory.domain.MemoryInsertCommand;
import com.chen.controller.memory.domain.MemoryUpdateCommand;
import com.chen.controller.memory.domain.MemoryPageQueryParams;
import com.chen.domain.memory.MemoryBO;
import com.chen.domain.memory.MemoryDTO;
import com.chen.domain.memory.MemoryPagesQuery;
import com.chen.domain.memory.MemoryQuery;
import com.chen.service.memory.MemoryService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.*;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;

/**
 * @author: 神的孩子都在歌唱
 * @date: 2024-08-15
 * @description: Controller
 */

@RequiredArgsConstructor
@RestController
@Api(value = "接口控制器", tags = "")
@RequestMapping("/memory")
public class MemoryController {

    private final MemoryService memoryService;

    @ApiOperation(value = "分页查询")
    @GetMapping(value = "/pages")
    public ResultData<TableDataInfo<MemoryDTO>> pages(MemoryPageQueryParams pagesQuery) {
        return ResultData.success(memoryService.page(BeanUtils.copyObject(pagesQuery, MemoryPagesQuery.class)));
    }

    @ApiOperation(value = "查询")
    @GetMapping(value = "/query")
    public ResultData<MemoryQuery> query() {
        return ResultData.success();
    }

    @ApiOperation(value = "新增")
    @PostMapping(value = "/insert")
    public ResultData<Boolean> insert(@RequestBody MemoryInsertCommand insertCommand) {
        memoryService.insert(BeanUtils.copyObject(insertCommand, MemoryBO.class));
        return ResultData.success(true);
    }

    @ApiOperation(value = "删除")
    @DeleteMapping(value = "/delete")
    public ResultData<Boolean> delete(@RequestBody MemoryDeleteCommand deleteCommand) {
        return ResultData.success(memoryService.delete(deleteCommand.getIds()));
    }

    @ApiOperation(value = "更新")
    @PutMapping(value = "/update")
    public ResultData<Boolean> update(@RequestBody MemoryUpdateCommand updateCommand) {
        memoryService.update(BeanUtils.copyObject(updateCommand, MemoryBO.class));

        return ResultData.success(true);
    }
}


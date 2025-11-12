package com.chen.controller.memory;

import com.chen.config.mybatisplus.core.TableDataInfo;
import com.chen.utils.BeanUtils;
import com.chen.utils.resultreturn.ResultData;
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
import io.swagger.v3.oas.annotations.tags.Tag;
import io.swagger.v3.oas.annotations.Operation;

/**
 * @author: 神的孩子都在歌唱
 * @date: 2024-08-15
 * @description: Controller
 */

@RequiredArgsConstructor
@RestController
@Tag(name = "接口控制器", description ="")
@RequestMapping("/memory")
public class MemoryController {

    private final MemoryService memoryService;

    @Operation(summary = "分页查询")
    @GetMapping(value = "/pages")
    public ResultData<TableDataInfo<MemoryDTO>> pages(MemoryPageQueryParams pagesQuery) {
        return ResultData.success(memoryService.page(BeanUtils.copyObject(pagesQuery, MemoryPagesQuery.class)));
    }

    @Operation(summary = "查询")
    @GetMapping(value = "/query")
    public ResultData<MemoryQuery> query() {
        return ResultData.success();
    }

    @Operation(summary = "新增")
    @PostMapping(value = "/insert")
    public ResultData<Boolean> insert(@RequestBody MemoryInsertCommand insertCommand) {
        memoryService.insert(BeanUtils.copyObject(insertCommand, MemoryBO.class));
        return ResultData.success(true);
    }

    @Operation(summary = "删除")
    @DeleteMapping(value = "/delete")
    public ResultData<Boolean> delete(@RequestBody MemoryDeleteCommand deleteCommand) {
        return ResultData.success(memoryService.delete(deleteCommand.getIds()));
    }

    @Operation(summary = "更新")
    @PutMapping(value = "/update")
    public ResultData<Boolean> update(@RequestBody MemoryUpdateCommand updateCommand) {
        memoryService.update(BeanUtils.copyObject(updateCommand, MemoryBO.class));

        return ResultData.success(true);
    }
}


package com.chen.controller.phrases;

import com.chen.config.mybatisplus.core.TableDataInfo;
import com.chen.config.mybatisplus.core.validate.AddGroup;
import com.chen.config.mybatisplus.core.validate.DeleteGroup;
import com.chen.utils.BeanUtils;
import com.chen.utils.resultreturn.ResultData;
import com.chen.controller.phrases.domain.PageQueryParams;
import com.chen.controller.phrases.domain.PhrasesDeleteCommands;
import com.chen.controller.phrases.domain.PhrasesInsertCommands;
import com.chen.controller.phrases.domain.PhrasesUpdateCommands;
import com.chen.domain.phrasesdomain.phrases.PhrasesBO;
import com.chen.domain.phrasesdomain.phrases.PhrasesDTO;
import com.chen.domain.phrasesdomain.phrases.PhrasesPagesQuery;
import com.chen.domain.phrasesdomain.phrases.PhrasesVO;
import com.chen.service.phrasesservice.phrases.PhrasesService;
import lombok.RequiredArgsConstructor;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.*;
import io.swagger.v3.oas.annotations.tags.Tag;
import io.swagger.v3.oas.annotations.Operation;

/**
 * @author: 神的孩子都在歌唱
 * @date: 2024-07-26
 * @description: Controller
 */
@RequiredArgsConstructor
@RestController
@Tag(name = "接口控制器", description ="")
@RequestMapping("/phrases")
public class PhrasesController {

    private final PhrasesService phrasesService;

    @Operation(summary = "分页查询")
    @GetMapping(value = "/pages")
    public ResultData<TableDataInfo<PhrasesDTO>> pages(PageQueryParams pageQueryParams) {
        return ResultData.success(phrasesService.page(BeanUtils.copyObject(pageQueryParams, PhrasesPagesQuery.class)));
    }

    @Operation(summary = "查询")
    @GetMapping(value = "/query")
    public ResultData<PhrasesVO> query() {
        return ResultData.success();
    }

    @Operation(summary = "新增")
    @PostMapping(value = "/insert")
    public ResultData<Boolean> insert(@Validated(AddGroup.class) @RequestBody PhrasesInsertCommands insertCommands) {
        return ResultData.success(phrasesService.insert(BeanUtils.copyObject(insertCommands, PhrasesBO.class)));
    }

    @Operation(summary = "删除")
    @DeleteMapping(value = "/delete")
    public ResultData<Boolean> delete(@Validated(DeleteGroup.class) @RequestBody PhrasesDeleteCommands deleteCommands) {
        return ResultData.success(phrasesService.delete(deleteCommands.getIds()));
    }

    @Operation(summary = "更新")
    @PutMapping(value = "/update")
    public ResultData<Boolean> update(@RequestBody PhrasesUpdateCommands updateCommands) {
        return ResultData.success( phrasesService.update(BeanUtils.copyObject(updateCommands, PhrasesBO.class)));
    }
}


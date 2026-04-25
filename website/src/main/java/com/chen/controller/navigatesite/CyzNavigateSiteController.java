package com.chen.controller.navigatesite;

import com.chen.controller.navigatesite.domin.NavigateSiteDeleteCommands;
import com.chen.controller.navigatesite.domin.NavigateSiteInsertCommands;
import com.chen.controller.navigatesite.domin.NavigateSiteUpdateCommands;
import com.chen.domain.navigatedomain.navigatesite.CyzNavigateSiteBO;
import com.chen.service.navigatesite.CyzNavigateSiteService;
import com.chen.utils.BeanUtils;
import com.chen.utils.resultreturn.ResultData;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

/**
 * @author: 神的孩子都在歌唱
 * @date: 2023-09-25
 * @description: 导航网站接口
 */
@RequiredArgsConstructor
@RestController
@Tag(name = "导航网站接口", description = "导航网站CRUD")
@RequestMapping("/cyzNavigateSite")
public class CyzNavigateSiteController {

    private final CyzNavigateSiteService navigateSiteService;

    @Operation(summary = "新增网站")
    @PostMapping(value = "/insert")
    public ResultData<Boolean> insert(@Validated @RequestBody NavigateSiteInsertCommands insertCommands) {
        navigateSiteService.insert(BeanUtils.copyObject(insertCommands, CyzNavigateSiteBO.class));
        return ResultData.success(true);
    }

    @Operation(summary = "删除网站")
    @DeleteMapping(value = "/delete")
    public ResultData<Boolean> delete(@Validated @RequestBody NavigateSiteDeleteCommands deleteCommands) {
        navigateSiteService.delete(deleteCommands.getIds());
        return ResultData.success(true);
    }

    @Operation(summary = "更新网站")
    @PutMapping(value = "/update")
    public ResultData<Boolean> update(@Validated @RequestBody NavigateSiteUpdateCommands updateCommands) {
        navigateSiteService.update(BeanUtils.copyObject(updateCommands, CyzNavigateSiteBO.class));
        return ResultData.success(true);
    }
}

package com.chen.controller.article;

import com.chen.common.config.mybatisplus.core.TableDataInfo;
import com.chen.common.config.mybatisplus.core.validate.AddGroup;
import com.chen.common.config.mybatisplus.core.validate.DeleteGroup;
import com.chen.common.config.mybatisplus.core.validate.EditGroup;
import com.chen.common.utils.BeanUtils;
import com.chen.common.utils.resultreturn.ResultData;
import com.chen.controller.article.domin.ArticleDeleteCommands;
import com.chen.controller.article.domin.ArticleInsertCommands;
import com.chen.controller.article.domin.ArticleUpdateCommands;
import com.chen.controller.article.domin.PageQueryParams;
import com.chen.domain.article.CyzArticleBO;
import com.chen.domain.article.CyzArticleDTO;
import com.chen.domain.article.CyzArticlePagesQuery;
import com.chen.domain.article.CyzArticleVO;
import com.chen.service.article.CyzArticleService;
import lombok.RequiredArgsConstructor;
import org.springframework.context.annotation.Bean;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.*;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;

/**
 * @author: 神的孩子都在歌唱
 * @date: 2024-07-17
 * @description: Controller
 */
@RequiredArgsConstructor
@RestController
@Api(value = "接口控制器", tags = "")
@RequestMapping("/cyzArticle")
public class CyzArticleController {

    private final CyzArticleService articleService;

    @ApiOperation(value = "分页查询")
    @GetMapping(value = "/pages")
    public ResultData<TableDataInfo<CyzArticleDTO>> pages(PageQueryParams queryParams) {
        return ResultData.success(articleService.page(BeanUtils.copyObject(queryParams, CyzArticlePagesQuery.class)));
    }

    @ApiOperation(value = "查询")
    @GetMapping(value = "/query")
    public ResultData<CyzArticleVO> query() {
        return ResultData.success();
    }

    @ApiOperation(value = "新增")
    @PostMapping(value = "/insert")
    public ResultData<Boolean> insert(@Validated(AddGroup.class) @RequestBody ArticleInsertCommands insertCommands) {
        articleService.insert(BeanUtils.copyObject(insertCommands, CyzArticleBO.class));
        return ResultData.success(true);
    }

    @ApiOperation(value = "删除")
    @DeleteMapping(value = "/delete")
    public ResultData<Boolean> delete(@Validated(DeleteGroup.class) @RequestBody ArticleDeleteCommands deleteCommands) {
        return ResultData.success(articleService.delete(deleteCommands.getId())
);
    }

    @ApiOperation(value = "更新")
    @PutMapping(value = "/update")
    public ResultData<Boolean> update(@Validated(EditGroup.class) @RequestBody ArticleUpdateCommands updateCommands) {
        articleService.update(BeanUtils.copyObject(updateCommands, CyzArticleBO.class));
        return ResultData.success(true);
    }
}


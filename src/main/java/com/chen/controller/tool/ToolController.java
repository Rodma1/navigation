package com.chen.controller.tool;

import com.chen.common.utils.resultreturn.ResultData;
import com.chen.controller.tool.domain.CharacterEscapeCommand;
import com.chen.controller.tool.domain.RegexMatcherCommand;
import com.chen.service.tool.ToolService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @Author chenyunzhi
 * @DATE 2024/8/1 9:26
 * @Description:
 */

@RequiredArgsConstructor
@RestController
@Api(value = "工具", tags = "工具")
@RequestMapping("/tool")
public class ToolController {


    private final ToolService toolService;

    @ApiOperation(value = "正则匹配")
    @PostMapping(value = "/regexMatcher")
    public ResultData<List<String>> regexMatcher(RegexMatcherCommand matcherCommand) {

        return ResultData.success(toolService.regexMatcher(matcherCommand.getRegex(),matcherCommand.getValue()));

    }

    @ApiOperation(value = "字符转义")
    @PostMapping(value = "/characterEscape")
    public ResultData<String> characterEscape(CharacterEscapeCommand escapeCommand) {

        return ResultData.success(toolService.characterEscapeUtil(escapeCommand.getValue()));

    }
}

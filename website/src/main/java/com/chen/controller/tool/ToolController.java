package com.chen.controller.tool;

import com.chen.utils.resultreturn.ResultData;
import com.chen.controller.tool.domain.CharacterEscapeCommand;
import com.chen.controller.tool.domain.RegexMatcherCommand;
import com.chen.service.tool.ToolService;
import io.swagger.v3.oas.annotations.tags.Tag;
import io.swagger.v3.oas.annotations.Operation;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;

/**
 * @Author chenyunzhi
 * @DATE 2024/8/1 9:26
 * @Description:
 */

@RequiredArgsConstructor
@RestController
@Tag(name = "工具", description ="工具")
@RequestMapping("/tool")
public class ToolController {


    private final ToolService toolService;

    @Operation(summary = "正则匹配")
    @PostMapping(value = "/regexMatcher")
    public ResultData<List<String>> regexMatcher(RegexMatcherCommand matcherCommand) {
        matcherCommand.getValues().add(matcherCommand.getValue());
        return ResultData.success(toolService.regexMatcher(matcherCommand.getRegex(),matcherCommand.getValues()));

    }

    @Operation(summary = "字符转义")
    @PostMapping(value = "/characterEscape")
    public ResultData<String> characterEscape(CharacterEscapeCommand escapeCommand) {

        return ResultData.success(toolService.characterEscapeUtil(escapeCommand.getValue()));

    }

    @Operation(summary = "sha256加密")
    @PostMapping(value = "/sha256")
    public ResultData<String> sha256(String str) {
        return ResultData.success(toolService.encryptSha256(str));
    }

    @Operation(summary = "对称加密生成公私钥")
    @PostMapping(value = "/rsaGenerateKeyPair")
    public ResultData<HashMap<String, String>> rsaGenerateKeyPair() throws Exception {
        return ResultData.success(toolService.rsaGenerateKeyPair());
    }
}

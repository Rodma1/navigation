package com.chen.chatai.controller;

import cn.dev33.satoken.stp.StpUtil;
import com.chen.chatai.config.ChatAiConfig;
import com.chen.chatai.dto.ChatRequest;
import com.chen.chatai.dto.ChatResponse;
import com.chen.chatai.entity.ChatConversation;
import com.chen.chatai.entity.ChatMessage;
import com.chen.chatai.service.ChatAiService;
import com.chen.utils.resultreturn.ResultData;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import org.springframework.http.MediaType;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.method.annotation.SseEmitter;

import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

@RequiredArgsConstructor
@RestController
@Tag(name = "AI 聊天", description = "AI 聊天相关接口")
@RequestMapping("/ai/chat")
public class ChatAiController {

    private final ChatAiService chatAiService;
    private final ChatAiConfig chatAiConfig;

    private final ExecutorService executor = Executors.newCachedThreadPool();

    @Operation(summary = "非流式聊天")
    @PostMapping
    public ResultData<ChatResponse> chat(@Validated @RequestBody ChatRequest request) {
        String userId = StpUtil.getLoginIdAsString();
        return ResultData.success(chatAiService.chat(request, userId));
    }

    @Operation(summary = "流式聊天")
    @PostMapping(value = "/stream", produces = MediaType.TEXT_EVENT_STREAM_VALUE)
    public SseEmitter chatStream(@Validated @RequestBody ChatRequest request) {
        String userId = StpUtil.getLoginIdAsString();
        SseEmitter emitter = new SseEmitter(300_000L);
        executor.execute(() -> chatAiService.chatStream(request, emitter, userId));
        return emitter;
    }

    @Operation(summary = "获取可选模型列表")
    @GetMapping("/models")
    public ResultData<List<ChatAiConfig.ModelOption>> getModels() {
        return ResultData.success(chatAiConfig.getModels());
    }

    @Operation(summary = "获取会话列表")
    @GetMapping("/conversations")
    public ResultData<List<ChatConversation>> listConversations() {
        String userId = StpUtil.getLoginIdAsString();
        return ResultData.success(chatAiService.listConversations(userId));
    }

    @Operation(summary = "获取会话消息历史")
    @GetMapping("/conversations/{id}/messages")
    public ResultData<List<ChatMessage>> listMessages(@PathVariable Long id) {
        String userId = StpUtil.getLoginIdAsString();
        return ResultData.success(chatAiService.listMessages(id, userId));
    }

    @Operation(summary = "删除会话")
    @DeleteMapping("/conversations/{id}")
    public ResultData<Boolean> deleteConversation(@PathVariable Long id) {
        String userId = StpUtil.getLoginIdAsString();
        return ResultData.success(chatAiService.deleteConversation(id, userId));
    }
}

package com.chen.chatai.service;

import com.chen.chatai.dto.ChatRequest;
import com.chen.chatai.dto.ChatResponse;
import com.chen.chatai.entity.ChatConversation;
import com.chen.chatai.entity.ChatMessage;
import org.springframework.web.servlet.mvc.method.annotation.SseEmitter;

import java.util.List;

public interface ChatAiService {

    ChatResponse chat(ChatRequest request, String userId);

    void chatStream(ChatRequest request, SseEmitter emitter, String userId);

    List<ChatConversation> listConversations(String userId);

    List<ChatMessage> listMessages(Long conversationId, String userId);

    boolean deleteConversation(Long conversationId, String userId);
}

//package com.chen.controller;
//
//import org.springframework.ai.chat.client.ChatClient;
//import org.springframework.ai.chat.client.advisor.QuestionAnswerAdvisor;
//import org.springframework.ai.chat.messages.UserMessage;
//import org.springframework.ai.chat.model.ChatResponse;
//import org.springframework.ai.chat.prompt.Prompt;
//import org.springframework.ai.ollama.OllamaChatModel;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.bind.annotation.RestController;
//import reactor.core.publisher.Flux;
//
//import java.util.Map;
//
//@RestController
//@RequestMapping("/ai")
//public class ChatController {
//
//    private final OllamaChatModel chatModel;
//
//    @Autowired
//    public ChatController(OllamaChatModel chatModel) {
//        this.chatModel = chatModel;
//    }
//
//    @GetMapping("/generate")
//    public Map<String,String> generate(@RequestParam(value = "message", defaultValue = "Tell me a joke") String message) {
//        return Map.of("generation", this.chatModel.call(message));
//    }
//    @GetMapping("/generateStream")
//    public Flux<String> generateStream(@RequestParam(value = "message", defaultValue = "Tell me a joke") String message) {
//
//        return ChatClient.builder(chatModel).build().prompt()
//                .user(message)
//                .stream()
//                .content();
//    }
//
//}
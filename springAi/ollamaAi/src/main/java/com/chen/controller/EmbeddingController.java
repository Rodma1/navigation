package com.chen.controller;

import jakarta.servlet.http.HttpServletResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.ai.chat.client.ChatClient;
import org.springframework.ai.chat.client.advisor.MessageChatMemoryAdvisor;
import org.springframework.ai.chat.client.advisor.QuestionAnswerAdvisor;
import org.springframework.ai.chat.memory.ChatMemory;
import org.springframework.ai.chat.model.ChatResponse;
import org.springframework.ai.chat.prompt.Prompt;
import org.springframework.ai.chat.prompt.PromptTemplate;
import org.springframework.ai.document.Document;
import org.springframework.ai.embedding.EmbeddingModel;
import org.springframework.ai.embedding.EmbeddingResponse;
import org.springframework.ai.ollama.OllamaChatModel;
import org.springframework.ai.reader.tika.TikaDocumentReader;
import org.springframework.ai.transformer.splitter.TokenTextSplitter;
import org.springframework.ai.vectorstore.SearchRequest;
import org.springframework.ai.vectorstore.VectorStore;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.InputStreamResource;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import reactor.core.publisher.Flux;

import java.time.LocalDate;
import java.util.List;
import java.util.Map;

import static java.util.stream.Collectors.toList;

/**
 * 嵌入模型 https://www.cnblogs.com/zlt2000/articles/18747435
 */
@RequiredArgsConstructor
@RestController
@RequestMapping("/ai")
public class EmbeddingController {

    private final EmbeddingModel embeddingModel;
    private final VectorStore vectorStore;
    private final OllamaChatModel chatModel;

    /**
     * 向量化的数据
     */
    @GetMapping("/embedding")
    public Map embed(@RequestParam(value = "message", defaultValue = "Tell me a joke") String message) {
        EmbeddingResponse embeddingResponse = this.embeddingModel.embedForResponse(List.of(message));
        return Map.of("embedding", embeddingResponse);
    }

    /**
     * 上传文件数据
     */
    @PostMapping("/vectorStore")
    public List<String> vectorStore(@RequestParam(name = "file") MultipartFile file) throws Exception {
        // 从IO流中读取文件
        TikaDocumentReader tikaDocumentReader = new TikaDocumentReader(new InputStreamResource(file.getInputStream()));
        // 将文本内容划分成更小的块
        List<Document> splitDocuments = new TokenTextSplitter()
                .apply(tikaDocumentReader.read());
        // 存入向量数据库，这个过程会自动调用embeddingModel,将文本变成向量再存入。
        vectorStore.add(splitDocuments);

        return splitDocuments.stream().map(Document::getFormattedContent).collect(toList());
    }

    /**
     * 投喂数据
     */
    @PostMapping("/vectorStoreContent")
    public List<String> vectorStore(@RequestParam(name = "content") String content) throws Exception {
        List<Document> documents = List.of(
                new Document(content));
        vectorStore.add(documents);

        return documents.stream().map(Document::getText).collect(toList());
    }

    /**
     * 从向量库中检索答案
     */
    @GetMapping("/vectorSearch")
    public List<String> vectorSearch(@RequestParam(name = "question") String question) {

        List<Document> documents = vectorStore.similaritySearch(SearchRequest.builder().query(question).topK(1).build());
        assert documents != null;
        return documents.stream().map(Document::getText).collect(toList());
    }

    /**
     * 从向量库中检索答案并放入到大模型
     */
    @GetMapping("/vectorSearchChatResponse")
    public Flux<String> vectorSearchChatResponse(@RequestParam(name = "question") String question, HttpServletResponse response) {

        String sysPrompt = """
        你是 常用物品查询 小助手，请根据用户提问回答。
        回答要求：
         - 请使用中文回答用户问题
        """;
        ChatClient chatClient = ChatClient.builder(chatModel)
                .defaultAdvisors(new QuestionAnswerAdvisor(vectorStore))
                .defaultSystem(sysPrompt)
                .build();
        response.setCharacterEncoding("UTF-8");

        // 使用PromptTemplate定义提示词模板
//        PromptTemplate promptTemplate = new PromptTemplate("如果遇到知识库里面的信息就加上一起分析回复: {input}");
        PromptTemplate promptTemplate = new PromptTemplate("用户问题: {input}");

        Prompt prompt = promptTemplate.create(Map.of("input", question));
        return chatClient.prompt(prompt)
                .stream()
                .content();
    }
    @GetMapping(value = "/streamChat", produces = MediaType.TEXT_EVENT_STREAM_VALUE)
    public Flux<String> streamChat(@RequestParam String input, HttpServletResponse response) {
        ChatClient chatClient = ChatClient.builder(chatModel)
                .defaultAdvisors(new QuestionAnswerAdvisor(vectorStore))
                .build();
        response.setCharacterEncoding("UTF-8");

        // 使用PromptTemplate定义提示词模板
        PromptTemplate promptTemplate = new PromptTemplate("请逐步解释你的思考过程: {input}");
        Prompt prompt = promptTemplate.create(Map.of("input", input));

        return chatClient.prompt(prompt)
                .system(s -> s.param("current_date", LocalDate.now().toString()))
                .stream()
                .content()
                .concatWith(Flux.just("[DONE]"))
                .onErrorResume(e -> Flux.just("ERROR: " + e.getMessage(), "[DONE]"));
    }
}
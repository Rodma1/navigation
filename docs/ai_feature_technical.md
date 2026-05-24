# 神唱导航 AI 助手功能 — 技术实现复盘

## 一、需求背景

项目「神唱导航」是一个个人导航网站，已有功能包括：网站导航分类管理、任务打卡、文件上传、ES 操作等。用户希望新增 AI 问答功能，核心需求：

1. 支持**流式输出**和**直接输出**两种模式
2. 前端可以**选择调用模型**（DeepSeek V3、R1、V4 等）
3. **多轮对话**上下文记忆，历史持久化到数据库
4. 前端新增 AI 助手菜单入口
5. AI 回复支持 Markdown 渲染

## 二、技术选型决策

### 2.1 为什么不用 Spring AI Starter？

项目现有 `springAi/ollamaAi` 模块中有被注释掉的 Spring AI 代码（使用 `spring-ai-ollama-spring-boot-starter`），但实际生产环境用的是**字节 Ark / 阿里云百炼**的 OpenAI 兼容接口，不是本地 Ollama。

项目中 `SiteAnalyzerServiceImpl` 已经有一套成熟的模式：**OkHttpClient + 直接调用 `/chat/completions`**。新功能复用这个模式，原因：

- 字节/阿里云的 API 都是 OpenAI 兼容接口，用 Spring AI 的 Ollama starter 反而需要额外适配
- OkHttpClient 方式更轻量，不引入 reactor-core 等重依赖
- 天然支持多 Provider 切换（改 `baseUrl` + `apiKey` 即可）

### 2.2 后续扩展：Anthropic API 支持

在开发过程中发现阿里云百炼的 token-plan 接入点同时提供 OpenAI 和 Anthropic 两种 API 格式。为了支持 Claude 模型，在代码中增加了 `apiType` 配置（`openai` / `anthropic`），Service 层根据 `apiType` 自动切换请求格式、Header、SSE 解析逻辑。

切换 Claude 只需改配置：
```yaml
ai:
  chat:
    base-url: https://token-plan.cn-beijing.maas.aliyuncs.com/apps/anthropic
    api-type: anthropic
    default-model: claude-sonnet-4-20250514
```

### 2.3 为什么用 SseEmitter 而不是 Flux<String>？

项目用的是 Spring MVC + Undertow（不是 WebFlux），`SseEmitter` 是 Spring MVC 原生 SSE 方案。`Flux<String>` 需要 reactor-core 依赖，且在 Servlet 容器上存在缓冲问题。SseEmitter + Undertow 兼容性经过验证，更可靠。

## 三、模块架构设计

### 3.1 后端模块结构

在 `springAi` 下新建 `chatAi` 子模块（jar 包），独立封装 AI 聊天逻辑：

```
navigation/springAi/chatAi/
├── pom.xml                              # 依赖 common-config + okhttp
└── src/main/java/com/chen/chatai/
    ├── config/ChatAiConfig.java          # 多 Provider + 多模型配置
    ├── controller/ChatAiController.java  # REST 接口
    ├── service/ChatAiService.java        # 服务接口
    ├── service/impl/ChatAiServiceImpl.java # 核心：OkHttp 调用 + SSE 推送
    ├── dto/ChatRequest.java              # 请求 DTO
    ├── dto/ChatResponse.java             # 响应 DTO
    ├── entity/ChatConversation.java      # 会话 PO
    ├── entity/ChatMessage.java            # 消息 PO
    ├── mapper/ChatConversationMapper.java
    └── mapper/ChatMessageMapper.java
```

**模块依赖链：** `website` → `chatAi` → `common-config` → `common-utils`

chatAi 不写自己的 `application.yml`，由 `website` 模块统一管理配置。`com.chen.chatai` 包在 `com.chen` 下，会被 `ChenApplication` 的 `@MapperScan("com.chen.**.mapper")` 自动扫描到，无需额外 `@ComponentScan`。

### 3.2 API 设计

| 方法 | 路径 | 说明 |
|------|------|------|
| POST | `/ai/chat` | 非流式聊天 |
| POST | `/ai/chat/stream` | 流式 SSE 聊天 |
| GET | `/ai/chat/models` | 获取可选模型列表 |
| GET | `/ai/chat/conversations` | 获取会话列表 |
| GET | `/ai/chat/conversations/{id}/messages` | 获取会话消息历史 |
| DELETE | `/ai/chat/conversations/{id}` | 删除会话 |

流式和非流式分开两个端点（而非用请求体字段控制），原因是 Spring MVC 对 `SseEmitter` 返回类型需要 `produces = text/event-stream`，与 `ResultData<ChatResponse>` 的 JSON 返回类型混在同一个方法会导致内容协商冲突。

### 3.3 数据库设计

```sql
CREATE TABLE cyz_chat_conversation (
    id BIGSERIAL PRIMARY KEY,
    title VARCHAR(200) DEFAULT '新对话',
    user_id VARCHAR(50) NOT NULL,
    model VARCHAR(100),
    create_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    update_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    del_flag SMALLINT DEFAULT 0
);

CREATE TABLE cyz_chat_message (
    id BIGSERIAL PRIMARY KEY,
    conversation_id BIGINT NOT NULL REFERENCES cyz_chat_conversation(id),
    role VARCHAR(20) NOT NULL,
    content TEXT NOT NULL,
    model VARCHAR(100),
    create_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    del_flag SMALLINT DEFAULT 0
);
```

遵循项目约定的 `cyz_` 表前缀，使用 MyBatis-Plus 的 `@TableLogic` 逻辑删除。会话表关联 `user_id`，确保用户只能访问自己的会话。

## 四、核心实现细节

### 4.1 ChatAiConfig — 多 Provider + 多模型

```java
@ConfigurationProperties(prefix = "ai.chat")
public class ChatAiConfig {
    private String baseUrl;          // API 地址
    private String apiKey;           // API Key
    private String apiType;          // "openai" 或 "anthropic"
    private String defaultModel;     // 默认模型
    private List<ModelOption> models; // 前端下拉可选模型列表
}
```

配置示例：
```yaml
ai:
  chat:
    base-url: https://token-plan.cn-beijing.maas.aliyuncs.com/compatible-mode/v1
    api-type: openai
    api-key: sk-xxx
    default-model: deepseek-v3.2
    models:
      - label: DeepSeek V3
        value: deepseek-v3.2
      - label: DeepSeek R1
        value: deepseek-r1
```

前端调用 `/ai/chat/models` 获取模型列表渲染下拉框，请求时通过 `model` 字段指定模型，后端透传给 API。

### 4.2 ChatAiServiceImpl — 双 API 格式适配

Service 层根据 `apiType` 切换三种差异：

**1）请求地址不同：**
- OpenAI: `baseUrl + /chat/completions`
- Anthropic: `baseUrl + /v1/messages`

**2）认证 Header 不同：**
- OpenAI: `Authorization: Bearer <apiKey>`
- Anthropic: `x-api-key: <apiKey>` + `anthropic-version: 2023-06-01`

**3）请求体/响应体格式不同：**

OpenAI 请求：
```json
{
  "model": "deepseek-v3.2",
  "messages": [{"role": "system", "content": "..."}, {"role": "user", "content": "你好"}],
  "stream": true,
  "temperature": 0.7
}
```

Anthropic 请求：
```json
{
  "model": "claude-sonnet-4-20250514",
  "max_tokens": 4096,
  "system": "你是一个智能助手...",
  "messages": [{"role": "user", "content": "你好"}],
  "stream": true
}
```

注意 Anthropic 的 `system` prompt 是顶层字段，不在 `messages` 数组里。代码中做了过滤：`!"system".equals(msg.get("role"))`。

### 4.3 流式响应实现（SseEmitter）

Controller 层：
```java
@PostMapping(value = "/stream", produces = MediaType.TEXT_EVENT_STREAM_VALUE)
public SseEmitter chatStream(@Validated @RequestBody ChatRequest request) {
    String userId = StpUtil.getLoginIdAsString();
    SseEmitter emitter = new SseEmitter(300_000L); // 5分钟超时
    executor.execute(() -> chatAiService.chatStream(request, emitter, userId));
    return emitter;
}
```

关键点：
- `SseEmitter` 在异步线程中执行（`executor.execute`），不阻塞 Servlet 线程
- `StpUtil.getLoginIdAsString()` 在主线程获取 userId，传给异步线程（Sa-Token 在异步线程中无法获取登录信息）

Service 层的流式处理：
```java
OkHttpClient → POST stream:true → BufferedReader 逐行读取 SSE
→ 解析每个 data 行 → emitter.send(SseEmitter.event().data(json))
→ 收到 [DONE] / message_stop → emitter.complete()
```

**OpenAI SSE 解析：**
```
data: {"choices":[{"delta":{"content":"你好"}}]}
→ 提取 choices[0].delta.content
```

**Anthropic SSE 解析：**
```
event: content_block_delta
data: {"type":"content_block_delta","delta":{"type":"text_delta","text":"你好"}}
→ 提取 delta.text
```

两种格式的 event 类型也不同：OpenAI 用 `data:` + `[DONE]` 结束标记，Anthropic 用 `event:` 类型 + `message_stop` 事件。

### 4.4 多轮对话记忆

每次聊天时从 `cyz_chat_message` 表加载该 `conversation_id` 的最近 20 条消息（按时间倒序取再反转），构建成 `messages` 数组传给 API。AI 回复完成后，用户消息和 AI 回复都存入数据库。

会话首次使用时，自动用用户第一句话截取前 30 字作为标题（`"你好，帮我..." → "你好，帮我..."`）。

### 4.5 前端 SSE 消费

前端用 `fetch` + `ReadableStream` 而非 `EventSource`，原因：
- `EventSource` 只支持 GET 请求
- `EventSource` 无法自定义 Header（需要 Authorization）
- `fetch` 支持 POST + 自定义 Header + 流式读取

```javascript
fetch(url, {
  method: 'POST',
  headers: { 'Content-Type': 'application/json', 'Authorization': token },
  body: JSON.stringify(data)
}).then(response => {
  const reader = response.body.getReader()
  // 递归 read()，逐块解码，按行解析 SSE data:
})
```

## 五、踩过的坑

### 5.1 Vue 开发代理缓冲 SSE

**问题：** 流式输出时前端收到的不是逐字推送，而是等全部完成后一次性显示。

**原因：** `http-proxy-middleware`（Vue CLI dev server 用的代理）会缓冲 SSE 响应，等流结束才转发给浏览器。

**解决：** 开发环境 SSE 请求绕过代理，直接请求后端 `http://127.0.0.1:8089/ai/chat/stream`。通过环境变量判断：
```javascript
const isDev = process.env.NODE_ENV === 'development'
const baseURL = isDev ? process.env.VUE_APP_BASE_URL : ''
```

### 5.2 CORS + Sa-Token OPTIONS 预检冲突

**问题：** 前端直连后端时，浏览器先发 OPTIONS 预检请求（不带 Authorization header），被 Sa-Token 拦截器拦截报 401。

**解决：** 新增 `CorsFilter`（Spring Filter，优先级最高 `@Order(Ordered.HIGHEST_PRECEDENCE)`），在 Filter 层直接处理 OPTIONS 返回 200，不再进入 Sa-Token Interceptor。Filter 执行顺序在 Interceptor 之前，所以 OPTIONS 请求在 CorsFilter 就结束了。

### 5.3 API Key 401 认证失败

**问题：** 配置的字节 Ark API Key 返回 `AuthenticationError: The API key status is not active`。

**原因：** 同一个 Key 在阿里云百炼的 token-plan 接入点上能正常使用，但在字节 Ark 接入点上不行。Key 和接入点需要匹配。

**解决：** 将 `base-url` 从字节 Ark 地址改为阿里云百炼的 token-plan 地址（`https://token-plan.cn-beijing.maas.aliyuncs.com/compatible-mode/v1`），Key 对接入点匹配后认证通过。

### 5.4 SseEmitter 返回类型与 ResultData 混用

**问题：** 最初设计用一个 POST 端点通过请求体 `stream` 字段控制流式/非流式，Controller 返回 `Object`。Spring MVC 无法正确判断内容协商（SseEmitter 需要 `text/event-stream`，ResultData 需要 `application/json`）。

**解决：** 拆成两个端点：`POST /ai/chat`（返回 ResultData）和 `POST /ai/chat/stream`（produces = text/event-stream，返回 SseEmitter）。

### 5.5 SaInterceptor handle 参数类型误判

**问题：** 尝试将 `SaInterceptor` lambda 中的 `handle` 参数强转为 `HttpServletRequest`，报 `ClassCastException: HandlerMethod cannot be cast to HttpServletRequest`。

**原因：** `handle` 的实际类型是 `HandlerMethod`（Spring MVC 的处理器方法对象），不是 Request。

**解决：** 放弃在 Sa-Token 拦截器中判断 OPTIONS，改用 CorsFilter 在更上层处理。

## 六、文件清单

### 新建文件（后端）
| 文件 | 说明 |
|------|------|
| `springAi/chatAi/pom.xml` | 模块定义 |
| `chatai/config/ChatAiConfig.java` | 多 Provider + 多模型配置 |
| `chatai/controller/ChatAiController.java` | REST 接口 |
| `chatai/service/ChatAiService.java` | 服务接口 |
| `chatai/service/impl/ChatAiServiceImpl.java` | OkHttp 调用 + SSE + 双 API 格式适配 |
| `chatai/dto/ChatRequest.java` | 请求 DTO |
| `chatai/dto/ChatResponse.java` | 响应 DTO |
| `chatai/entity/ChatConversation.java` | 会话实体 |
| `chatai/entity/ChatMessage.java` | 消息实体 |
| `chatai/mapper/ChatConversationMapper.java` | 会话 Mapper |
| `chatai/mapper/ChatMessageMapper.java` | 消息 Mapper |
| `common-config/CorsFilter.java` | CORS 过滤器（处理 OPTIONS 预检） |

### 新建文件（前端）
| 文件 | 说明 |
|------|------|
| `navigate_web/src/api/chat.js` | API 层（axios + fetch SSE） |
| `navigate_web/src/views/AiChatView.vue` | 聊天页面组件 |

### 新建文件（SQL）
| 文件 | 说明 |
|------|------|
| `sql/chat_ai_tables.sql` | 建表 SQL |

### 修改的现有文件
| 文件 | 改动 |
|------|------|
| `springAi/pom.xml` | 添加 `<module>chatAi</module>` |
| `website/pom.xml` | 添加 chatAi 依赖 |
| `website/.../application-dev.yml` | 添加 `ai.chat` 配置 |
| `website/.../application-prod.yml` | 添加 `ai.chat` 配置 |
| `common-config/WebConfig.java` | 清空 CORS 配置（由 CorsFilter 处理） |
| `navigate_web/src/router/index.js` | 添加 `/ai-chat` 路由 |
| `navigate_web/src/views/NavMenuView.vue` | 工具箱添加 AI 助手菜单 |
| `navigate_web/vue.config.js` | 代理 onProxyRes SSE 禁缓冲 |
| `navigate_web/package.json` | 添加 marked + highlight.js |

## 七、后续可优化方向

1. **对话历史限制策略** — 当前硬编码取最近 20 条，可根据模型 token 限制动态调整
2. **API Key 安全** — 当前 Key 明文写在 yml 中，可改为环境变量注入
3. **流式输出中断处理** — 用户中途切换会话或关闭页面时，需要 cancel SseEmitter 和 OkHttp 请求
4. **Agent 能力** — 结合项目已有的 SiteAnalyzer（AI 分析网站）和 ES 搜索，让 AI 助手能调用工具
5. **多 Provider 配置并存** — 当前只支持一个 Provider，可改为支持同时配置多个，前端下拉选择 Provider+Model 组合
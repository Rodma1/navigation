-- AI 聊天会话表
CREATE TABLE IF NOT EXISTS cyz_chat_conversation (
    id BIGSERIAL PRIMARY KEY,
    title VARCHAR(200) DEFAULT '新对话',
    user_id VARCHAR(50) NOT NULL,
    model VARCHAR(100),
    create_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    update_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    del_flag SMALLINT DEFAULT 0
);

-- AI 聊天消息表
CREATE TABLE IF NOT EXISTS cyz_chat_message (
    id BIGSERIAL PRIMARY KEY,
    conversation_id BIGINT NOT NULL REFERENCES cyz_chat_conversation(id),
    role VARCHAR(20) NOT NULL,
    content TEXT NOT NULL,
    model VARCHAR(100),
    create_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    del_flag SMALLINT DEFAULT 0
);

CREATE INDEX IF NOT EXISTS idx_chat_message_conversation_id ON cyz_chat_message(conversation_id);
CREATE INDEX IF NOT EXISTS idx_chat_conversation_user_id ON cyz_chat_conversation(user_id);

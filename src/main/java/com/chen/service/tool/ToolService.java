package com.chen.service.tool;

import java.util.HashMap;
import java.util.List;

/**
 * @Author chenyunzhi
 * @DATE 2024/8/1 9:23
 * @Description: 工具类
 */
public interface ToolService {

    /**
     * 正则匹配
     * @param regex 正则
     * @param value 匹配项
     */
    List<String> regexMatcher(String regex, List<String> value);

    String characterEscapeUtil(String value);

    /**
     * sha256加密
     */
    String encryptSha256(String str);

    /**
     * 对称加密生成公私钥
     */
    HashMap<String, String> rsaGenerateKeyPair() throws Exception;
}

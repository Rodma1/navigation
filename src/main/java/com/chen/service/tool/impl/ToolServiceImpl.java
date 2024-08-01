package com.chen.service.tool.impl;

import com.chen.service.tool.ToolService;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * @Author chenyunzhi
 * @DATE 2024/8/1 9:24
 * @Description:
 */

@Service
public class ToolServiceImpl implements ToolService {
    @Override
    public List<String> regexMatcher(String regex, List<String> values) {
        List<String> matchResults = new ArrayList<>();
        // 编译正则表达式
        Pattern pattern = Pattern.compile(regex);
        for (String value:values) {
            // 创建 Matcher 对象并进行匹配
            Matcher matcher = pattern.matcher(value);
            // 查找匹配项
            if (matcher.find()) {
                System.out.println("Match found: " + matcher.group());
                matchResults.add("Match found: " + matcher.group());
            } else {
                System.out.println("No match found.");
                matchResults.add("No match found: " + value);

            }
        }
        return matchResults;
    }

    @Override
    public String characterEscapeUtil(String value) {
        Map<Character, String> escapeMap = new HashMap<>();

        escapeMap.put('<', "&lt;");
        escapeMap.put('>', "&gt;");
        escapeMap.put('&', "&amp;");
        escapeMap.put('"', "&quot;");
        escapeMap.put('\'', "&#x27;");
        escapeMap.put('/', "&#x2F;");

        if (value == null || value.isEmpty()) {
            return value;
        }

        StringBuilder escapedString = new StringBuilder();
        for (char c : value.toCharArray()) {
            String escaped = escapeMap.get(c);
            if (escaped != null) {
                escapedString.append(escaped);
            } else {
                escapedString.append(c);
            }
        }

        return escapedString.toString();
    }
}

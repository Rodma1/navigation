package com.chen.utils;

import lombok.Data;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;

/**
 * 网页信息抓取工具
 * <p>
 * 使用 Jsoup 请求目标 URL，提取网页的标题、描述、图片、正文摘要等信息，
 * 供 AI 分析服务使用。抓取失败时不抛异常，返回空信息。
 */
public class WebPageFetcher {

    @Data
    public static class WebPageInfo {
        /** 网页标题（<title> 标签） */
        private String title;
        /** 网页描述（<meta name="description">） */
        private String description;
        /** 网页图片（优先取 og:image，其次取 favicon） */
        private String imageUrl;
        /** 网页正文文本，截取前2000字供 AI 分析 */
        private String bodyText;
    }

    /**
     * 抓取指定 URL 的网页信息
     *
     * @param url 目标网站地址
     * @return 提取到的网页信息，抓取失败时返回空字段
     */
    public static WebPageInfo fetch(String url) {
        WebPageInfo info = new WebPageInfo();
        try {
            Document doc = Jsoup.connect(url)
                    .userAgent("Mozilla/5.0 (compatible; SiteAnalyzer/1.0)")
                    .timeout(10000)
                    .get();

            // 提取 <title>
            info.setTitle(doc.title());

            // 提取 <meta name="description">
            Element metaDesc = doc.selectFirst("meta[name=description]");
            if (metaDesc != null) {
                info.setDescription(metaDesc.attr("content"));
            }

            // 提取网站 logo/图片，按优先级尝试多种方式
            // 1. og:image（社交媒体分享图，通常质量最高）
            Element ogImage = doc.selectFirst("meta[property=og:image]");
            if (ogImage != null && !ogImage.attr("content").isEmpty()) {
                info.setImageUrl(resolveUrl(url, ogImage.attr("content")));
            }
            // 2. 页面中带有 logo 的 img 标签（class/id/src 含 logo）
            if (info.getImageUrl() == null || info.getImageUrl().isEmpty()) {
                Element logoImg = doc.selectFirst("img[src][class*=logo], img[src][id*=logo], img[src*=/logo]");
                if (logoImg != null) {
                    info.setImageUrl(resolveUrl(url, logoImg.attr("abs:src")));
                }
            }
            // 3. apple-touch-icon（苹果设备图标，通常比 favicon 清晰）
            if (info.getImageUrl() == null || info.getImageUrl().isEmpty()) {
                Element appleIcon = doc.selectFirst("link[rel=apple-touch-icon], link[rel=apple-touch-icon-precomposed]");
                if (appleIcon != null && !appleIcon.attr("href").isEmpty()) {
                    info.setImageUrl(resolveUrl(url, appleIcon.attr("abs:href")));
                }
            }
            // 4. favicon
            if (info.getImageUrl() == null || info.getImageUrl().isEmpty()) {
                Element icon = doc.selectFirst("link[rel~=(icon|shortcut icon)]");
                if (icon != null && !icon.attr("href").isEmpty()) {
                    info.setImageUrl(resolveUrl(url, icon.attr("abs:href")));
                }
            }

            // 提取正文文本，截取前2000字
            String text = doc.body() != null ? doc.body().text() : "";
            if (text.length() > 2000) {
                text = text.substring(0, 2000);
            }
            info.setBodyText(text);
        } catch (Exception e) {
            // 抓取失败不中断流程，返回空信息让 AI 根据 URL 分析
            info.setTitle("");
            info.setDescription("");
            info.setBodyText("抓取失败: " + e.getMessage());
        }
        return info;
    }

    /**
     * 将相对 URL 转为绝对 URL
     */
    private static String resolveUrl(String baseUrl, String href) {
        if (href == null || href.isEmpty()) return "";
        if (href.startsWith("http://") || href.startsWith("https://")) return href;
        try {
            return new java.net.URL(new java.net.URL(baseUrl), href).toString();
        } catch (Exception e) {
            return href;
        }
    }
}

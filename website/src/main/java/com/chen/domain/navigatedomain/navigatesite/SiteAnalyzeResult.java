package com.chen.domain.navigatedomain.navigatesite;

import lombok.Data;

@Data
public class SiteAnalyzeResult {

    private String name;

    private String description;

    private String imageUrl;

    private Long categoryId;

    private String categoryName;
}

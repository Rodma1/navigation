package com.chen.service.ai;

import com.chen.domain.navigatedomain.navigatesite.SiteAnalyzeResult;

public interface SiteAnalyzerService {

    SiteAnalyzeResult analyzeSite(String url);
}

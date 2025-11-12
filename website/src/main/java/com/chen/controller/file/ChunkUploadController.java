package com.chen.controller.file;

import com.chen.domain.file.FileUploadInfo;
import com.chen.service.ChunkUploadService;
import com.chen.utils.resultreturn.ResultData;
import io.swagger.v3.oas.annotations.tags.Tag;
import io.swagger.v3.oas.annotations.Operation;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

@RestController
@RequestMapping("/chunk")
@RequiredArgsConstructor
@Tag(name = "分片上传接口", description = "大文件分片上传相关接口")
public class ChunkUploadController {

    private final ChunkUploadService chunkUploadService;

    @PostMapping("/upload")
    @Operation(summary = "上传分片")
    public ResultData<String> uploadChunk(FileUploadInfo fileUploadInfo) {
        String chunkPath = chunkUploadService.uploadChunk(fileUploadInfo);
        return ResultData.success(chunkPath);
    }

    @GetMapping("/check")
    @Operation(summary = "检查分片是否存在")
    public ResultData<Boolean> checkChunk(
            @RequestParam("identifier") String identifier,
            @RequestParam("chunkNumber") Integer chunkNumber) {
        boolean exists = chunkUploadService.checkChunk(identifier, chunkNumber);
        return ResultData.success(exists);
    }

    @PostMapping("/merge")
    @Operation(summary = "合并分片")
    public ResultData<String> mergeChunks(
            @RequestParam("identifier") String identifier,
            @RequestParam("filename") String filename,
            @RequestParam("totalChunks") Integer totalChunks) {
        String fileUrl = chunkUploadService.mergeChunks(identifier, filename, totalChunks);
        return ResultData.success(fileUrl);
    }
} 
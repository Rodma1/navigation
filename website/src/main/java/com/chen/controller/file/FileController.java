package com.chen.controller.file;

import com.chen.MinioTemplate;
import com.chen.domain.file.FileService;
import com.chen.utils.resultreturn.ResultData;
import domain.MinioItemVo;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;

@RequiredArgsConstructor
@RestController
@Tag(name = "接口控制器", description ="文件接口")
@RequestMapping("/file")
public class FileController {

    private final FileService fileService;

    private final MinioTemplate minioTemplate;


    @PostMapping("/fileUpload")
    public ResultData<String> fileUpload(String filePath, String fileName) {
        fileService.uploadFile(filePath, fileName);
        return ResultData.success("上传成功");
    }

    @PostMapping("/fileStreamUpload")
    public ResultData<String> fileStreamUpload(@RequestParam(name = "file")  MultipartFile file) throws IOException {
        fileService.uploadFile(file);
        return ResultData.success("上传成功");
    }

    @GetMapping("/getAllBuckets")
    public ResultData<List<String>> getAllBuckets() {
        return ResultData.success(fileService.getAllBuckets());
    }

    @GetMapping("/getFileList")
    public ResultData<List<MinioItemVo>> getFileList(@RequestParam(name = "bucketName") String bucketName) {
        return ResultData.success(minioTemplate.getAllObjects(bucketName,true));
    }
}

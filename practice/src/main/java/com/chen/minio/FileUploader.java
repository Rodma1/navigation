package com.chen.minio;

import io.minio.BucketExistsArgs;
import io.minio.MakeBucketArgs;
import io.minio.MinioClient;
import io.minio.UploadObjectArgs;
import io.minio.errors.MinioException;
import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;

public class FileUploader {
  public static void main(String[] args)
      throws IOException, NoSuchAlgorithmException, InvalidKeyException {
    try {
      // Create a minioClient with the MinIO server playground, its access key and secret key.
      MinioClient minioClient =
          MinioClient.builder()
              .endpoint("http://192.168.235.129:9000")
              .credentials("ROOTNAME", "CHANGEME123")
              .build();

      // Make 'asiatrip' bucket if not exist.
      boolean found =
          minioClient.bucketExists(BucketExistsArgs.builder().bucket("test").build());
      if (!found) {
        // Make a new bucket called 'asiatrip'.
        minioClient.makeBucket(MakeBucketArgs.builder().bucket("test").build());
      } else {
        System.out.println("Bucket 'test' already exists.");
      }

      // Upload '/home/user/Photos/asiaphotos.zip' as object name 'asiaphotos-2015.zip' to bucket
      // 'asiatrip'.
      minioClient.uploadObject(
          UploadObjectArgs.builder()
              .bucket("test")
              .object("public-2025.sql")
              .filename("D:\\study\\code\\navigation\\sql\\public.sql")
              .build());
      System.out.println(
          "'D:\\study\\code\\navigation\\sql\\public.sql' is successfully uploaded as "
              + "object 'public-2025.sql' to bucket 'test'.");
    } catch (MinioException e) {
      System.out.println("Error occurred: " + e);
      System.out.println("HTTP trace: " + e.httpTrace());
    }
  }
}
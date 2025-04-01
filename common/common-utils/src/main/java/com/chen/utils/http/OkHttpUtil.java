package com.chen.utils.http;

import cn.hutool.core.io.FileUtil;
import cn.hutool.json.JSONObject;
import cn.hutool.json.JSONUtil;
import com.chen.common.config.NetInterceptor;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.github.rholder.retry.*;
import lombok.SneakyThrows;
import lombok.extern.slf4j.Slf4j;
import okhttp3.*;
import org.apache.commons.collections4.MapUtils;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.exception.ExceptionUtils;
import org.jetbrains.annotations.NotNull;

import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import java.io.File;
import java.io.IOException;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/**
 * @author chenyunzhi
 * <a href="https://square.github.io/okhttp/">...</a>
 */
@Slf4j
public class OkHttpUtil {

    private final static int READ_TIMEOUT = 100;
    private final static int CONNECT_TIMEOUT = 60;
    private final static int WRITE_TIMEOUT = 60;
    private static volatile OkHttpClient okHttpClient;

    private static final ObjectMapper objectMapper = new ObjectMapper();

    static Retryer<Integer> retryer = RetryerBuilder.<Integer>newBuilder()
            // retryIf 重试条件
            .retryIfResult(Objects::isNull)
            //设置异常重试源
            .retryIfExceptionOfType(IOException.class)
            .retryIfRuntimeException()
            .retryIfResult(res -> res!=0)
            //设置等待间隔时间
            .withWaitStrategy(WaitStrategies.fixedWait(3, TimeUnit.SECONDS))
            //设置最大重试次数
            .withStopStrategy(StopStrategies.stopAfterAttempt(3))
            .build();

    public X509TrustManager x509TrustManager() {
        return new X509TrustManager() {
            @Override
            public void checkClientTrusted(X509Certificate[] x509Certificates, String s) throws CertificateException {
            }

            @Override
            public void checkServerTrusted(X509Certificate[] x509Certificates, String s) throws CertificateException {
            }

            @Override
            public X509Certificate[] getAcceptedIssuers() {
                return new X509Certificate[0];
            }
        };
    }

    public SSLSocketFactory sslSocketFactory() {
        try {
            //信任任何链接
            SSLContext sslContext = SSLContext.getInstance("TLS");
            sslContext.init(null, new TrustManager[]{x509TrustManager()}, new SecureRandom());
            return sslContext.getSocketFactory();
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        } catch (KeyManagementException e) {
            e.printStackTrace();
        }
        return null;
    }

    public ConnectionPool pool() {
        return new ConnectionPool(200, 5, TimeUnit.MINUTES);
    }

    private OkHttpUtil() {
        okHttpClient = new OkHttpClient.Builder()
                .addNetworkInterceptor(new NetInterceptor())
                .sslSocketFactory(sslSocketFactory(), x509TrustManager())
                .hostnameVerifier(((s, sslSession) -> true))
                //是否开启缓存
                .retryOnConnectionFailure(false)
                //连接池
                .connectionPool(pool())
                .connectTimeout(CONNECT_TIMEOUT, TimeUnit.SECONDS)
                .readTimeout(READ_TIMEOUT, TimeUnit.SECONDS)
                .writeTimeout(WRITE_TIMEOUT, TimeUnit.SECONDS)
                .build();
    }

    public static OkHttpClient getInstance() {
        if (null == okHttpClient) {
            synchronized (OkHttpUtil.class) {
                if (okHttpClient == null) {
                    new OkHttpUtil();
                    return okHttpClient;
                }
            }
        }
        return okHttpClient;
    }

    /**
     * 根据map获取get请求参数
     *
     * @param queries
     * @return
     */
    public static StringBuffer getQueryString(String url, Map<String, Object> queries) {
        StringBuffer sb = new StringBuffer(url);
        if (queries != null && queries.keySet().size() > 0) {
            boolean firstFlag = true;
            Iterator iterator = queries.entrySet().iterator();
            while (iterator.hasNext()) {
                Map.Entry entry = (Map.Entry<String, Object>) iterator.next();
                if (firstFlag) {
                    sb.append("?" + entry.getKey() + "=" + entry.getValue());
                    firstFlag = false;
                } else {
                    sb.append("&" + entry.getKey() + "=" + entry.getValue());
                }
            }
        }
        return sb;
    }

    /**
     * 调用okhttp的newCall方法
     *
     * @param request
     * @return
     */
    private static String execNewCall(Request request) {
        Response response = null;
        String result = "";
        try {
            response = getInstance().newCall(request).execute();
            int status = response.code();
            log.info("okhttp3 respose={} " + response);
            if (response.isSuccessful()) {
                result = response.body().string();
            }
        } catch (Exception e) {
            log.error("okhttp3 put error >> ex = {}", e.getMessage());
        } finally {
            if (response != null) {
                response.close();
            }
        }
        return result;
    }

    /**
     * 调用okhttp的异步newCall方法
     *
     * @param request
     * @return
     */
    private static String ayscExecNewCall(Request request) {
        AtomicReference<String> result = new AtomicReference<>();
        getInstance().newCall(request).enqueue(new Callback() {
            @Override
            public void onResponse(@NotNull Call call, @NotNull Response response) throws IOException {
                if(response.isSuccessful()){
                    String responseBody = response.body().string();
                    result.set(responseBody);
                }
            }

            @Override
            public void onFailure(@NotNull Call call, @NotNull IOException e) {
                e.printStackTrace();
            }
        });
        return result.get();
    }

    /**
     * get
     *
     * @param url     请求的url
     * @param queries 请求的参数，在浏览器？后面的数据，没有可以传null
     * @return
     */
    public static String get(String url, Map<String, Object> queries) {
        StringBuffer sb = getQueryString(url, queries);
        Request request = new Request.Builder().url(sb.toString()).build();
        return execNewCall(request);
    }

    /**
     * get
     *
     * @param url 请求的url
     * @return
     */
    public static String get(String url) {
        Request request = new Request.Builder().url(url).build();
        return execNewCall(request);
    }

    /**
     * post
     *
     * @param url    请求的url
     * @param params post form 提交的参数
     * @return
     */
    public static String postFormParams(String url, Map<String, Object> params) {
        FormBody.Builder builder = new FormBody.Builder();
        // 添加参数
        if (params != null && params.keySet().size() > 0) {
            for (String key : params.keySet()) {
                builder.add(key, String.valueOf(params.get(key)));
            }
        }
        Request request = new Request.Builder().url(url).post(builder.build()).build();
        return execNewCall(request);
    }

    /**
     * 使用POST方法提交表单参数到指定URL
     *
     * @param url            目标URL地址
     * @param params         表单参数键值对，如果不需要传递参数则可以为空
     * @param headerParam    HTTP头部参数键值对，如果不需要传递头部参数则可以为空
     * @return               返回执行HTTP请求后的响应结果字符串
     */
    public static String postFormParams(String url, Map<String, Object> params, Map<String, String> headerParam) {
        // 创建表单请求体构建器
        FormBody.Builder builder = new FormBody.Builder();
        // 创建HTTP头部构建器
        Headers.Builder headerBuilder = new Headers.Builder();

        // 添加参数到表单请求体构建器中
        if (params != null && params.keySet().size() > 0) {
            for (String key : params.keySet()) {
                builder.add(key, String.valueOf(params.get(key)));
            }
        }

        // 添加头部参数到HTTP头部构建器中
        if (!MapUtils.isNotEmpty(headerParam)) {
            for (String key : headerParam.keySet()) {
                headerBuilder.add(key, headerParam.get(key));
            }
        }

        // 创建Request对象，设置URL、HTTP头部和请求体
        Request request = new Request.Builder()
                .url(url)
                .headers(headerBuilder.build())
                .post(builder.build())
                .build();

        // 执行HTTP请求并返回结果
        return execNewCall(request);
    }

    //带重试功能的post方法
    public static int retryPostFormParams(String url, Map<String, Object> params) {
        FormBody.Builder builder = new FormBody.Builder();
        // 添加参数
        if (params != null && params.keySet().size() > 0) {
            for (String key : params.keySet()) {
                builder.add(key, String.valueOf(params.get(key)));
            }
        }
        Request request = new Request.Builder().url(url).post(builder.build()).build();
        try {
            return retryer.call(()->{
                String result=execNewCall(request);
                if(StringUtils.isNotBlank(result)){
                    JsonNode jsonNode = objectMapper.readTree(result);
                    return jsonNode.path("code").asInt();
                }
                return -1;
            });
        } catch (ExecutionException e) {
            throw new RuntimeException(e);
        } catch (RetryException e) {
            throw new RuntimeException(e);
        }
    }

    //带重试功能的post方法
    public static int retryPostJsonParams(String url, String jsonParams) throws JsonProcessingException {
        RequestBody requestBody = RequestBody.create(jsonParams, MediaType.parse("application/json; charset=utf-8"));
        Request request = new Request.Builder().url(url).post(requestBody).build();
        String result=ayscExecNewCall(request);
        log.info("推送的数据：{}",jsonParams);
        log.info("请求返回信息：{}",result);
        if(StringUtils.isNotBlank(result)){
            JsonNode jsonNode = objectMapper.readTree(result);
            return jsonNode.path("code").asInt();
        }
        return -1;
    }

    public static String postForm(String url,String appKey,String appCode, Map<String, String> params) {
        FormBody.Builder builder = new FormBody.Builder();
        // 添加参数
        if (params != null && params.keySet().size() > 0) {
            for (String key : params.keySet()) {
                builder.add(key, String.valueOf(params.get(key)));
            }
        }
        Request request = new Request.Builder()
                .addHeader("AppKey", appKey)
                .addHeader("FK_AppNo", appCode)
                .url(url)
                .post(builder.build()).build();
        return ayscExecNewCall(request);
    }

    //String authorization, String xIcspTenantCode
    public static String postFormParams(String url, String authorization, String xIcspTenantCode, Map<String, Object> params) {
        FormBody.Builder builder = new FormBody.Builder();
        // 添加参数
        if(params != null && params.keySet().size() > 0) {
            for(String key : params.keySet()) {
                builder.add(key, String.valueOf(params.get(key)));
            }
        }
        Request request = new Request.Builder().url(url).headers(Headers.of("Authorization", authorization, "X-ICSP-Tenant-Code", xIcspTenantCode)).post(builder.build()).build();
        return execNewCall(request);
    }
    /**
     * Post请求发送JSON数据....{"name":"zhangsan","pwd":"123456"} 参数一：请求Url 参数二：请求的JSON 参数三：请求回调
     */
    public static String postJsonParams(String url, String jsonParams) {
        RequestBody requestBody = RequestBody.create(jsonParams, MediaType.parse("application/json; charset=utf-8"));
        Request request = new Request.Builder().url(url).post(requestBody).build();
        return execNewCall(request);
    }

    /**
     * Post请求发送JSON数据....{"name":"zhangsan","pwd":"123456"} 参数一：请求Url 参数二：请求的JSON 参数三：请求回调
     */
    @SneakyThrows
    public static String postHkgov(String url, String xAppKey, String jsonParams) {
        RequestBody requestBody = FormBody.create(jsonParams.getBytes("utf-8"), MediaType.parse("application/json"));
        Request request = new Request.Builder()
                .addHeader("x-app-key", xAppKey)
                .addHeader("Content-Type", "application/json")
                .url(url)
                .post(requestBody).build();
        log.info("推送的url:{}",url);
        log.info("推送的头信息:{}",request.headers());
        log.info("推送的数据:{}",jsonParams);
        String result=ayscExecNewCall(request);
        log.info("推送的返回结果:{}",result);
        return result;
    }

    /**
     * Post请求发送JSON数据....{"name":"zhangsan","pwd":"123456"} 参数一：请求Url 参数二：请求的JSON 参数三：请求回调
     */
    @SneakyThrows
    public static JSONObject postHnkey(String url, String authorization, String xIcspTenantCode, String jsonParams) {
        RequestBody requestBody = RequestBody.create(jsonParams, MediaType.parse("application/json; charset=utf-8"));
        Request request = new Request.Builder().url(url).headers(Headers.of("Authorization", authorization, "X-ICSP-Tenant-Code", xIcspTenantCode)).post(requestBody).build();
        String result = execNewCall(request);

        if(StringUtils.isNotBlank(result)) {
            return JSONUtil.parseObj(result);
        }
        return null;
    }

    /**
     * Post请求发送JSON数据....{"name":"zhangsan","pwd":"123456"} 参数一：请求Url 参数二：请求的JSON 参数三：请求回调
     */
    @SneakyThrows
    public static String postKey(String url, String authorization, String xIcspTenantCode, String jsonParams) {
        RequestBody requestBody = RequestBody.create(jsonParams, MediaType.parse("application/json; charset=utf-8"));
        Request request = new Request.Builder().url(url).headers(Headers.of("Authorization", authorization, "X-ICSP-Tenant-Code", xIcspTenantCode)).post(requestBody).build();
        return execNewCall(request);
    }

    @SneakyThrows
    public static String postKey(String url, String encodeKey, String jsonParams) {
        RequestBody requestBody = RequestBody.create(jsonParams, MediaType.parse("application/json; charset=utf-8"));
        Request request = new Request.Builder().url(url).headers(Headers.of("key", encodeKey)).post(requestBody).build();
        return execNewCall(request);
    }

    @SneakyThrows
    public static String postAuthorization(String url, String encodeKey, String jsonParams) {
        RequestBody requestBody = RequestBody.create(jsonParams, MediaType.parse("application/json; charset=utf-8"));
        Request request = new Request.Builder().url(url).headers(Headers.of("Authorization", "Bearer "+encodeKey)).post(requestBody).build();
        return execNewCall(request);
    }

    public static String postXml(String url, String xmlStr) {
        RequestBody requestBody = RequestBody.create(xmlStr, MediaType.parse("application/xml; charset=utf-8"));
        Request request = new Request.Builder().url(url).post(requestBody).build();
        return execNewCall(request);
    }

    public static String getTianYanCha(String url, String keyword) {
        Map<String, Object> params = new HashMap<>();
        params.put("keyword", keyword);

        StringBuffer sb = getQueryString(url, params);
        Request request = new Request.Builder().addHeader("Authorization", "f0782911-3274-48c0-ada2-812111995854").url(sb.toString()).build();
        return execNewCall(request);
    }

    public static String postMultipartBody(String url, byte[] bytes, String fileName) {
        if (bytes != null && bytes.length > 0) {
            RequestBody fileBody = RequestBody.create(bytes, MediaType.parse("application/octet-stream"));
            MultipartBody multipartBody = new MultipartBody.Builder().setType(MultipartBody.FORM)
                    .addFormDataPart("fileName", fileName)
                    .addFormDataPart("file", fileName, fileBody)
                    .build();
            Request request = new Request.Builder()
                    .url(url)
                    .post(multipartBody)
                    .build();
            return execNewCall(request);
        } else {
            return "bytes 不能为空";
        }
    }

    public static String postMulBody(String url,File file, String appKey,String appCode, String json) {
        if(FileUtil.exist(file)) {
            RequestBody fileBody = RequestBody.create(file, MediaType.parse("application/octet-stream"));
            MultipartBody multipartBody = new MultipartBody.Builder().setType(MultipartBody.FORM)
                    .addFormDataPart("json", json)
                    .addFormDataPart("file", file.getName(),fileBody)
                    .build();
            Request request = new Request.Builder()
                    .addHeader("AppKey", appKey)
                    .addHeader("FK_AppNo", appCode)
                    .url(url)
                    .post(multipartBody)
                    .build();
            return execNewCall(request);
        } else {
            return "bytes 不能为空";
        }
    }

    public static byte[] getBytes(String url) {
        Response response = null;
        byte[] result = null;
        try {
            Request request = new Request.Builder().url(url).build();
            response = getInstance().newCall(request).execute();
            if (response.isSuccessful()) {
                result = response.body().bytes();
            }
        } catch (Exception e) {
            log.error("okhttp3 put error >> ex = {}", ExceptionUtils.getStackTrace(e));
        } finally {
            if (response != null) {
                response.close();
            }
        }
        return result;
    }
}

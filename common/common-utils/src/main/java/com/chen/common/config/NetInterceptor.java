package com.chen.common.config;

import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;

import java.io.IOException;
/**
 * @author qiujin
 * @date 2022/1/25 10:00
 */
public class NetInterceptor implements Interceptor {

    @Override
    public Response intercept(Chain chain) throws IOException {
        Request request = chain.request().newBuilder().addHeader("Connection", "close").build();
        return chain.proceed(request);

    }
}

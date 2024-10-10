package com.chen.common.utils.algorithm;

import com.chen.common.exception.ServiceException;

import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;


/**
 * @author chenyunzhi
 * @date 2022/3/18
 * @description SHA256工具类
 */
public class SHA256Utils {

    /**
     * SHA256加密
     *
     * @param str 加密前的报文
     * @return 加密数据
     */
    public static String buildSHA256String(String str) {
        try {
            String encodeStr = "";
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
            messageDigest.update(str.getBytes(StandardCharsets.UTF_8));
            encodeStr = byte2Hex(messageDigest.digest());
            return encodeStr;
        } catch (Exception e) {
            throw new ServiceException(e);
        }

    }


    /**
     * byte[]转为16进制
     *
     * @param bytes
     * @return
     */
    private static String byte2Hex(byte[] bytes) {
        StringBuilder stringBuffer = new StringBuilder();
        for (byte aByte : bytes) {
            String temp = Integer.toHexString(aByte & 0xFF);
            if (temp.length() == 1) {
                stringBuffer.append("0");
            }
            stringBuffer.append(temp);
        }
        return stringBuffer.toString();
    }
}

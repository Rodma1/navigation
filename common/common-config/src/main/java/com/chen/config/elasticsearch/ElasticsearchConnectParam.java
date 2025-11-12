package com.chen.config.elasticsearch;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;
import lombok.experimental.Accessors;

import java.io.Serializable;

/**
 * @author chenyunzhi
 */

@Data
@Accessors(chain = true)
public class ElasticsearchConnectParam implements Serializable {

    @Schema(name ="用户名")
    private String userName;

    @Schema(name ="密码")
    private String password;

    @Schema(name ="ip地址")
    private String hostName;

    @Schema(name ="端口")
    private Integer port;

    @Schema(name ="协议 http  https")
    private String scheme;

    public ElasticsearchConnectParam() {

    }
    public ElasticsearchConnectParam(String userName,String password,String hostName,Integer port,String scheme) {
        this.userName = userName;
        this.password = password;
        this.hostName = hostName;
        this.port = port;
        this.scheme = scheme;

    }

}

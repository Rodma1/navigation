package com.chen.domain.elsaticsearch;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.experimental.Accessors;

import java.util.Date;

/**
 * @author chenyunzhi
 * @date 2024/6/21 16:54
 * @Description
 */

@Data
@Accessors(chain = true)
public class ElasticsearchConnectParam {

    @ApiModelProperty("用户名")
    private String userName;

    @ApiModelProperty("密码")
    private String password;

    @ApiModelProperty("ip地址")
    private String hostName;

    @ApiModelProperty("端口")
    private Integer port;

    @ApiModelProperty("协议 http  https")
    private String scheme;

    public ElasticsearchConnectParam(String userName,String password,String hostName,Integer port,String scheme) {
        this.userName = userName;
        this.password = password;
        this.hostName = hostName;
        this.port = port;
        this.scheme = scheme;

    }

}

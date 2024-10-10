package com.chen.controller.user;

import cn.dev33.satoken.secure.SaSecureUtil;
import cn.dev33.satoken.stp.StpUtil;
import com.chen.common.config.NavigateConfig;
import com.chen.common.exception.ServiceException;
import com.chen.common.utils.algorithm.SHA256Utils;
import com.chen.common.utils.algorithm.SM2Utils;
import com.chen.common.utils.resultreturn.ResultData;
import com.chen.controller.user.domain.UserLogin;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.*;

import java.rmi.ServerException;


/**
 * @Author chenyunzhi
 */
@RestController
@Api(value = "用户接口", tags = "用户接口")
@RequestMapping("/user/")
public class UserController {

    // 测试登录，浏览器访问： http://localhost:8081/user/doLogin?username=zhang&password=123456
    @ApiOperation(value = "登录接口")
    @PostMapping("doLogin")
    public ResultData<String> doLogin(@RequestBody UserLogin userLogin) {
        try {
            String decrypt = SM2Utils.decrypt(userLogin.getCredential());
            if(NavigateConfig.getPrincipal().equals(userLogin.getPrincipal()) && NavigateConfig.getCredential().equals(SHA256Utils.buildSHA256String(decrypt))) {
                StpUtil.login(10001);
                return ResultData.success(StpUtil.getTokenInfo().tokenValue);
            }
            return ResultData.error("登录失败");
        } catch (Exception e) {
            throw new ServiceException("登录失败:" + e.getMessage());

        }

    }

    // 查询登录状态，浏览器访问： http://localhost:8081/user/isLogin
    @ApiOperation(value = "查询登录状态")
    @GetMapping("isLogin")
    public ResultData<String>  isLogin() {
        return ResultData.success("当前会话是否登录：" + StpUtil.isLogin());
    }

    // 测试注销  ---- http://localhost:8081/acc/logout
    @PostMapping("/logout")
    @ApiOperation(value = "登出")
    public ResultData<String> logout() {
        StpUtil.logout();
        return ResultData.success("登出成功");
    }

}

package com.chat.mapper;

import com.chat.bean.Login;

public interface LoginMapper {
    //判断登录
    String justLogin(Login login);
    //根据账号查询用户ID
    String lkUseridByUsername(String username);
}

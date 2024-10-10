package com.chat.service;

import com.chat.bean.Login;
import com.chat.mapper.LoginMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoginService {
    @Autowired
    LoginMapper loginMapper;
    public String justLogin(Login login){
        return loginMapper.justLogin(login);
    }
    public String lkUseridByUsername(String username){
        return loginMapper.lkUseridByUsername(username);
    }
}

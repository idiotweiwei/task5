package com.ptteng.gwj.service;

import com.ptteng.gwj.entities.User;

public interface UserService {

    //登录
    User login(User user);

    void updateLoginAt(User user);
    //注册
    void addUser(User user);
}

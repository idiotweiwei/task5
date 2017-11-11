package com.ptteng.gwj.dao;

import com.ptteng.gwj.entities.User;

public interface UserDao {

    //登录
    User login(User user);

    //登录时间
    int updateLoginAt(User user);

    //注册
    int addUser(User user);

}

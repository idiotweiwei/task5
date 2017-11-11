package com.ptteng.gwj.service.impl;

import com.ptteng.gwj.dao.UserDao;
import com.ptteng.gwj.entities.User;
import com.ptteng.gwj.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service("userService")
public class UserServiceImpl implements UserService{

    @Autowired
    UserDao userDao;

    //登录
    public User login(User user){
       return userDao.login(user);
    }

    public void updateLoginAt(User user){
        userDao.updateLoginAt(user);
    }

    //注册
    public void addUser(User user){
        userDao.addUser(user);
    }

}

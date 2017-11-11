package com.ptteng.gwj.controller;


import com.ptteng.gwj.entities.User;
import com.ptteng.gwj.service.UserService;
import com.ptteng.gwj.util.DesUtil;
import com.ptteng.gwj.util.Md5Util;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Controller
@RequestMapping("/login")
public class UserController {

    @Autowired
    UserService userService;

    //登录
    @RequestMapping(value = "/0",method = RequestMethod.GET)
    public String login(){
        return "/jsp/login.jsp";
    }


    //登录界面传值
    @RequestMapping(value = "/id",method = RequestMethod.POST)
    public String loginId(String userName,String userPassword,User user,HttpServletResponse response,
                          HttpServletRequest request)throws ServletException,IOException{
        String str ="/jsp/error.jsp";
        if(userName!=null&userPassword!=null) {

            //获取密码字段，然后对其进行MD5加密
            Md5Util md52 = new Md5Util();
            String src2 = user.getUserPassword();
            String md2 = md52.getMd5(src2);
            System.out.println(md2);
            //对加密后的字符串放入数据库中
            user.setUserPassword(md2);

            user.setUserName(userName);
//            user.setUserPassword(userPassword);
            User temp = userService.login(user);
            if(temp!=null){
                user.setLoginAt(System.currentTimeMillis());
                user.setUserId(temp.getUserId());
                userService.updateLoginAt(user);
                try{
                    //将用户名和登录时间加密
                    DesUtil des = new DesUtil("login");
                    //将账号，登录时间，密码全部加密了
                    String src = user.getUserName()+","+""+user.getLoginAt()+","+""+user.getUserPassword();
                    //Des加密后的字符
                    String Token = des.encrypt(src);
                    //创建cookie对象，并将Token放入cookie中，包括一些相关设置
                    Cookie cookie = new Cookie("Token", Token);//创建cookie对象
                    //设置会话时间
                    cookie.setMaxAge(60 * 60);
                    //设置cookie的使用路径，"／"相当于开放全路径
                    cookie.setPath("/");
                    response.addCookie(cookie);
                    System.out.println("cookie value:"+cookie.getValue());

                }catch (Exception e){
                    e.printStackTrace();
                }
                str="redirect:/a/home";
            }
        }
        return str;
    }

    //注册
    @RequestMapping(value = "/1",method = RequestMethod.GET)
    public String regist(){
        return "/jsp/regist.jsp";
    }

    //注册页面传值
    @RequestMapping(value = "/add",method = RequestMethod.POST)
    public String addUser(String userPassword,User user){
        user.setCreateAt(System.currentTimeMillis());
        user.setUpdateAt(System.currentTimeMillis());

        //获取密码字段，然后对其进行MD5加密
        Md5Util md51 = new Md5Util();
        String src1 = user.getUserPassword();
        String md1 = md51.getMd5(src1);
        System.out.println(md1);
        //对加密后的字符串放入数据库中
        user.setUserPassword(md1);

        userService.addUser(user);
        return "redirect:/login/0";
    }
}

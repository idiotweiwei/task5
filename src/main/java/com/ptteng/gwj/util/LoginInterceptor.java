package com.ptteng.gwj.util;

import com.ptteng.gwj.entities.User;
import com.ptteng.gwj.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginInterceptor implements HandlerInterceptor {

    @Autowired
    private UserService userService;

    public boolean preHandle(HttpServletRequest request, HttpServletResponse response,Object handler)
            throws Exception{
        /**
         * 1.拦截请求url
         * 2.从cookie中取Token
         * 3.如果没有toke跳转到登录页面
         * 4.取到token，需要调用数据库查询用户信息（用户名和登录时间）
         * 5.如果会话时间结束，则需要跳转到注册页面
         * 6.如果没有结束，则放行
         */
        User user= new User();
        boolean flag = false;
        Cookie[] cookies = request.getCookies();
        if(cookies != null){
            for(int i = 0;i < cookies.length;i++){
                if(cookies[i].getName().equals("Token")){
                    try{
                        DesUtil des = new DesUtil("login");
                        String Token=cookies[i].getValue();
                        String desToken=des.decrypt(Token);
                        String[] sArr=desToken.split(",");
                        String userName=sArr[0];
                        String loginA=sArr[1];
                        String userPassword=sArr[2];
                        //给user对象中添加用户名
                        user.setUserName(userName);
                        //给user对象中添加用户密码
                        user.setUserPassword(userPassword);
                        //String转化为Long
                        Long loginAt=Long.parseLong(loginA);
                        User uS=userService.login(user);
                        if(loginAt.equals(uS.getLoginAt())){
                            return true;
                        }

                    }catch (Exception e){
                        e.printStackTrace();
                    }
                }
            }
        }
        response.sendRedirect("/login/0");
        return flag;
    }


    public void postHandle( HttpServletRequest request,HttpServletResponse response, Object handler,
                           ModelAndView modelAndView)throws Exception{

    }



    public void afterCompletion(HttpServletRequest request,HttpServletResponse response,Object handler,Exception e)
            throws Exception{


    }
}

package com.ptteng.gwj.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.rmi.ServerException;


@Controller
@RequestMapping("/")
public class RequestTestDrive extends HttpServlet{

    @RequestMapping(value = "/doGet",method = RequestMethod.GET)
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException {
        //得到请求的URL
        String requestUrl = request.getRequestURL().toString();
        //得到请求的资源
        String requestUri = request.getRequestURI();
        //得到请求的URL地址中附带的参数
        String queryString = request.getQueryString();
        //得到来访者的IP地址
        String remoteAddr = request.getRemoteAddr();
        //返回发出请求的客户机的完整主机名
        String remoteHost = request.getRemoteHost();
        //返回客户机所使用的网络端口号
        int remotePort = request.getRemotePort();
        //返回用户名
        String remoteUser = request.getRemoteUser();
        //得到请求URL地址时使用的方法
        String method = request.getMethod();
        //返回请求URL中的额外路径信息
        //额外路径信息请求URL中的位于Servlet的路径之后和查询参数之前的内容，它以"／"开头
        String pathInfo = request.getPathInfo();
        //获得web服务器端的ip地址
        String localAddr = request.getLocalAddr();
        //获得web服务器端的主机名
        String localName = request.getLocalName();
        //设置字符以UTF-8编码输出到客户浏览器
        response.setCharacterEncoding("UTF-8");
        //通过设置响应头控制浏览器以UTF-8的编码显示数据（防止乱码）
        response.setHeader("content","text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        out.write("获取到的客户信息如下：");
        out.write("<hr/>");
        out.write("请求的URL地址："+requestUrl);
        out.write("<hr/>");
        out.write("请求的资源："+requestUri);
        out.write("<hr/>");
        out.write("请求的URL地址中附带的参数："+queryString);
        out.write("<hr/>");
        out.write("来访者的IP地址："+remoteAddr);
        out.write("<hr/>");
        out.write("来访者的主机名："+remoteHost);
        out.write("<hr/>");
        out.write("使用的端口号："+remotePort);
        out.write("<hr/>");
        out.write("用户名："+remoteUser);
        out.write("<hr/>");
        out.write("请求使用的方法："+method);
        out.write("<hr/>");
        out.write("请求URL中额外的路径信息："+pathInfo);
        out.write("<hr/>");
        out.write("服务器端的IP地址："+localAddr);
        out.write("<hr/>");
        out.write("服务器短的主机名："+localName);
        out.write("<hr/>");
    }

    @RequestMapping(value = "/test",method = RequestMethod.GET)
    public void test(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{
        RequestTestDrive rm = new RequestTestDrive();
        rm.doGet(request,response);
    }

}

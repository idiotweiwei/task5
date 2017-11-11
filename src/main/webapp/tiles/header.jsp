<%--
  Created by IntelliJ IDEA.
  User: guoweijie
  Date: 2017/11/3
  Time: 下午9:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8" name="viewport" content="width=device-width" initial-scale=1  maximum-scale=1  minimum-scale=1  user-scalable=no>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/task8-home.css">
    <%--<script src="http://how2j.cn/study/js/jquery/2.0.0/jquery.min.js"></script>--%>
    <link href="http://how2j.cn/study/css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
    <%--<script src="http://how2j.cn/study/js/bootstrap/3.3.6/bootstrap.min.js"></script>--%>
</head>
<body>
<header>
    <div class="top">
        <p>客服电话:010-594-78634</p>
        <div class="top-right">
            <div class="wexin"></div>
            <div class="qq"></div>
            <div class="sina"></div>
        </div>
    </div>

    <div class="header-center">
        <img src="${pageContext.request.contextPath}/image/three/logo.png" class="logo" height="40">
        <div class="center-right">
            <a href="${pageContext.request.contextPath}/a/home">首页</a>
            <a href="${pageContext.request.contextPath}/u/profession">职业</a>
            <a href="#">推荐</a>
            <a href="#">关于</a>
        </div>
    </div>
</header>
</body>
</html>

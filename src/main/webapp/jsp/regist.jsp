<%--
  Created by IntelliJ IDEA.
  User: guoweijie
  Date: 2017/11/8
  Time: 下午5:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册页面</title>
</head>
<body>
<form id="regist" action="${pageContext.request.contextPath}/login/add" method="post">
    <div class="form-group">
        <label for="userName">用户名:</label>
        <input type="text" id="userName" name="userName" placeholder="请输入用户名:"/>
    </div>
    <div class="form-group">
        <label for="userPassword">密码 :</label>
        <input type="text" id="userPassword" name="userPassword" placeholder="请输入密码:" />
    </div>
    <div class="form-group">
        <button type="submit" class="btn btn-sm btn-success">注册</button>
    </div>
</form>
</body>
</html>

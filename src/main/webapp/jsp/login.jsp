<%--
  Created by IntelliJ IDEA.
  User: guoweijie
  Date: 2017/11/8
  Time: 下午5:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录注册</title>
</head>
<body>

<%--登录--%>
<form name="login" action="${pageContext.request.contextPath}/login/id" method="post">
    <table width="300" align="center" border="1">
        <tr>
            <td colspan="2" align="center">登录窗口</td>
        </tr>
        <tr>
            <td>用户名</td>
            <td><input type="text" name="userName" placeholder="请输入用户名"></td>
        </tr>
        <tr>
            <td>密码</td>
            <td><input type="password" name="userPassword" placeholder="请输入密码"></td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" value="登录"></td>
        </tr>
    </table>
</form>

<%--注册--%>
<form action="${pageContext.request.contextPath}/login/1">
    <input type="submit" value="注册">
</form>
</body>
</html>

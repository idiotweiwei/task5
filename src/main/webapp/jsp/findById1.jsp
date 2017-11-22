<%--
  Created by IntelliJ IDEA.
  User: guoweijie
  Date: 2017/11/1
  Time: 下午9:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<h1>查询界面</h1>
<table width="60%" border="1px" cellpadding="0" cellspacing="0">
    <tr>
        <td>编号</td>
        <td>创建者</td>
        <td>创建时间</td>
        <td>学员姓名</td>
        <td>工作状态</td>
        <td>工作职位</td>
        <td>工作宣言</td>
        <td>更新者</td>
        <td>更新时间</td>
        <td>编辑</td>
        <td>修改</td>
    </tr>
    <tr>
        <td>${pi.id}</td>
        <td>${pi.createBy}</td>
        <td>${pi.createAt}</td>
        <td>${pi.studentName}</td>
        <td>${pi.isWorking}</td>
        <td>${pi.studentPosition}</td>
        <td>${pi.summary}</td>
        <td>${pi.updateBy}</td>
        <td>${pi.updateAt}</td>
        <td><a href="/a/studentpages?id=${pi.id}">修改</a></td>
        <td><a href="/a/studentpage?id=${pi.id}">删除</a></td>
    </tr>

    <form action="${pageContext.request.contextPath}/a/student/point" method="get">
        输入ID<input type="text" name="searchPi"/>
        <input type="submit"  value="redis缓存查询"/>
    </form>

</table>
</body>
</html>

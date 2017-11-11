<%--
  Created by IntelliJ IDEA.
  User: guoweijie
  Date: 2017/11/1
  Time: 下午9:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div style="width: 500px;margin: auto;text-align: center">
    <div style="text-align: center;margin: 40px">
        <form action="${pageContext.request.contextPath}/a/student" method="POST">
            <input type="hidden" name="_method" value="put">
            <div>创建者：<input type="text" name="createBy" value="${s.createBy}"/></div>
            <%--<div>创建时间：<input type="text" name="createAt" value="${s.createAt}"/></div>--%>
            <div>学员姓名：<input type="text" name="studentName" value="${s.studentName}"/></div>
            <div>工作状态：<input type="text" name="isWorking" value="${s.isWorking}"/></div>
            <div>工作职位：<input type="text" name="studentPosition" value="${s.studentPosition}"/></div>
            <div>工作介绍：<input type="text" name="summary" value="${s.summary}"/></div>
            <div>更新者：<input type="text" name="updateBy" value="${s.updateBy}"/></div>
            <%--<div>更新时间：<input type="text" name="updateAt" value="${s.updateAt}"/></div>--%>
            <input type="hidden" name="id" value="${s.id}"/>
            <input type="submit" value="修改"/>
        </form>
    </div>
</div>
</body>
</html>

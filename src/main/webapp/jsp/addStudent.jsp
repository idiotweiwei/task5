<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: guoweijie
  Date: 2017/11/1
  Time: 下午3:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加页面</title>
</head>
<body>
<div class="from-group">

    <h1>添加信息</h1>
    <hr/>

    <%--id：作为标签的唯一标识。--%>
    <%--name：作为可与服务器交互数据的标示。--%>
    <form:form action="${pageContext.request.contextPath}/a/student" method="post" reole="form">

        <div class="from-group">
            <label for="createBy">创建人</label>
            <input type="text" id="createBy" name="createBy" placeholder="请输入创建者："/>
        </div>

        <%--<div class="from-group">--%>
            <%--<label for="createAt">创建时间</label>--%>
            <%--<input type="text" id="createAt" name="createAt" placeholder="请输入创建时间："/>--%>
        <%--</div>--%>

        <div class="from-group">
            <label for="studentName">学员名</label>
            <input type="text" id="studentName" name="studentName" placeholder="请输入学员名："/>
        </div>

        <div class="from-group">
            <label for="isWorking">工作状态</label>
            <input type="text" id="isWorking" name="isWorking" placeholder="现在的工作状态："/>
        </div>

        <div class="from-group">
            <label for="studentPosition">工作职位</label>
            <input type="text" id="studentPosition" name="studentPosition" placeholder="工作职位："/>
        </div>

        <div class="from-group">
            <label for="summary">工作宣言</label>
            <input type="text" id="summary" name="summary" placeholder="工作宣言："/>
        </div>

        <div class="from-group">
            <label for="updateBy">更新者</label>
            <input type="text" id="updateBy" name="updateBy" placeholder="请输入更新者："/>
        </div>

        <%--<div class="from-group">--%>
            <%--<label for="updateAt">更新时间</label>--%>
            <%--<input type="text" id="updateAt" name="updateAt" placeholder="请输入更新时间："/>--%>
        <%--</div>--%>

        <div class="form-group">
            <button type="submit" class="btn btn-sm btn-success">增加</button>
        </div>
    </form:form>
</div>
</body>
</html>

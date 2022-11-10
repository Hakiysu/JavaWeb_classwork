<%@ page import="java.util.Objects" %><%--
  Created by IntelliJ IDEA.
  User: Hakiysu
  Date: 2022/10/31
  Time: 8:15:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ResultOfRegister</title>
</head>
<body>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    if(Objects.equals(username, "user")){
        out.print("该用户名已被注册");
    }
    else if (Objects.equals(username, "admin")){
        out.print("欢迎您，管理员");
    }
    else out.print("注册成功");
%>
</body>
</html>

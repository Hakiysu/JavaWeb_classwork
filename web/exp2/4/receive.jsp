<%--
  Created by IntelliJ IDEA.
  User: Hakiysu
  Date: 2022/10/11
  Time: 17:12:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<BODY bgcolor=cyan><Font size=3>
    <%
        request.setCharacterEncoding("utf-8");
        String name = request.getParameter("name");
        String sex = request.getParameter("R");
        String[] superstarList = request.getParameterValues("superstar");
        String secret = request.getParameter("secret");
    %>
    您的姓名：<%=name%><br>
    您的性别：<%=sex%><br>
    您喜欢的歌手：
    <%
        for (String superstar : superstarList) {
            out.print(superstar + " ");
        }
    %>
    <br>
    提交的隐藏信息：<%=secret%><br>
</FONT></BODY>
</html>

<%--
  Created by IntelliJ IDEA.
  User: Hakiysu
  Date: 2022/11/7
  Time: 9:32:58
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Counter</title>
</head>
<body>
<jsp:useBean id="counter" class="Calculator.counter" scope="request"/>
<%
    String cont = counter.ReadFile("./Count.txt");
    counter.WriteFile("./Count.txt",cont);
%>
您是本网站的第<%=cont%>位访问者。
</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: Hakiysu
  Date: 2022/10/24
  Time: 8:34:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>数字阶乘</title>
</head>
<body>
<%!
    public int getFactorial(int i){
        int f=1;
        for(int j=1;j<=i;j++)
            f=f*j;
        return f;
    }
%>

<%
    for (int j=1;j<=10;j++) {
        out.print( "<p>"+j+ "的阶乘:"+getFactorial(j)+"</p>");
    }
%>
</body>
</html>

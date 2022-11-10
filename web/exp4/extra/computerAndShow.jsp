<%@ page import="java.util.regex.Pattern" %><%--
  Created by IntelliJ IDEA.
  User: Hakiysu
  Date: 2022/10/25
  Time: 17:27:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%!
    public static boolean isNumeric(String str){
        Pattern pattern = Pattern.compile("[0-9]*");
        return pattern.matcher(str).matches();
    }
%>
<%
    String s = request.getParameter("sendNum");
    if (s != null) {
        if(isNumeric(s)){
            int n = Integer.parseInt(s);
            out.print(n+"的平方："+n*n+"<br>");
            out.print(n+"的立方："+n*n*n+"<br>");
        }
        else{
            response.sendRedirect("inputNumber.jsp");
        }
    }
%>
</body>
</html>

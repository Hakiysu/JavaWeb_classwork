
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Large2</title>
</head>
<body>
您猜的两个数字均大于随机数。<br>
<%
    String gn1 = (String) session.getAttribute("guessNum1");
    String gn2 = (String) session.getAttribute("guessNum2");
    int rn1 = (int) session.getAttribute("rNum1");
    int rn2 = (int) session.getAttribute("rNum2");
    out.print("您猜的第一个数："+gn1+"<br>");
    out.print("您猜的第二个数："+gn2+"<br>");
    out.print("第一个随机数："+rn1+"<br>");
    out.print("第二个随机数："+rn2+"<br>");
%>
<a href="exer8_2.jsp"> 点击再次猜数</a>
</body>
</html>

<%@ page import="java.util.Random" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>猜双数字</title>
</head>
<body>
<P>猜双数字
</P>
<form action="" method=post name=form>
    您猜的数字是：<input type="text" name="guessNum1" >和<input type="text" name="guessNum2" ><br>
    <input type="submit" value="提交" name=submit>
</form>
<%
    String gn1= request.getParameter("guessNum1");
    String gn2= request.getParameter("guessNum2");
    Random rdm = new Random();
    int rNum1=rdm.nextInt(100)+1;
    int rNum2=rdm.nextInt(100)+1;
    session.setAttribute("guessNum1",gn1);
    session.setAttribute("guessNum2",gn2);
    session.setAttribute("rNum1",rNum1);
    session.setAttribute("rNum2",rNum2);
%>
<a href="result.jsp"> 查验结果</a>
</body>
</html>

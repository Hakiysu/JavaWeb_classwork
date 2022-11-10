<%--
  Created by IntelliJ IDEA.
  User: Hakiysu
  Date: 2022/10/11
  Time: 17:01:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<p>请输入正整数N
<form name="form1" method="get" action="res1.jsp">
    <input type="text" name="sendNum" value="1">
    <input type="submit" name="Submit" value="送出">
</form>
<%! public class jiecheng {
    int n;

    jiecheng(int n) {
        this.n = n;
    }

    int getFactorial() {
        int f = 1;
        for (int i = 1; i <= n; i++) {
            f *= i;
        }
        return f;
    }
}
%>
<%
    String s = request.getParameter("sendNum");
    int n;
    if (s != null) {
        n = Integer.parseInt(s);
    } else {
        n = 1;
    }
    jiecheng facNum = new jiecheng(n);//创建对象
%>
<p>N的阶乘是：<%=facNum.getFactorial() %>
</body>
</html>

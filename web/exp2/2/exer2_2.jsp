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
<p>请输入正方形边长
<form name="form1" method="get" action="exer2_2.jsp">
    <input type="text" name="cat" value="1">
    <input type="submit" name="Submit" value="送出">
</form>
<%! public class square {
    double r;

    square(double r) {
        this.r = r;
    }

    double getarea() {
        return r * r;
    }

    double getlength() {
        return r * 4;
    }
}
%>
<%
    String s = request.getParameter("cat");
    double r;
    if (s != null) {
        r = Double.valueOf(s).doubleValue();
    } else {
        r = 1;
    }
    square cc = new square(r);//创建对象
%>
<p>方的面积是：<%=cc.getarea() %>
<p>方的周长是：<%=cc.getlength() %>
</body>
</html>

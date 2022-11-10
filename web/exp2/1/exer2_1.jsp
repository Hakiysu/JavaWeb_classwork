<%--
  Created by IntelliJ IDEA.
  User: Hakiysu
  Date: 2022/10/11
  Time: 17:00:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%! int count = 0;        //被客户共享的count

    synchronized void setCount()  //synchronized修饰的方法
    {
        count++;
    }
%>
<% setCount();
    out.println("您是第" + count + "个访问本站的客户");
%>
</body>
</html>

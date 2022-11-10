<%--
  Created by IntelliJ IDEA.
  User: Hakiysu
  Date: 2022/10/11
  Time: 17:14:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=gbk" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    // setting receive data encode style
    request.setCharacterEncoding("gbk");
    // receive data from reg.html
    String name = request.getParameter("name");
    String password = request.getParameter("pw");
    String password2 = request.getParameter("pw2");
    String sex = request.getParameter("sex");
    String career = request.getParameter("career");
    String tel = request.getParameter("telephone");
    String email = request.getParameter("email");
    String[] fav = request.getParameterValues("fav");
    String intro = request.getParameter("intro");
%>

<h1>用户注册的信息</h1>

<p>
    姓名：<%=name%><br>
    密码：<%=password%><br>
    确认密码：<%=password2%><br>
    性别：<%=sex%><br>
    职业：<%=career%><br>
    电话号码：<%=tel%><br>
    电子邮箱：<%=email%><br>
    兴趣爱好：
    <%
        for (String favAct : fav) {
            out.print(favAct + " ");
        }
    %>
    <br>
    自我介绍：<%=intro%><br>
</p>
</body>
</html>

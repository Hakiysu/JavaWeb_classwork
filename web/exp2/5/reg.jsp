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

<h1>�û�ע�����Ϣ</h1>

<p>
    ������<%=name%><br>
    ���룺<%=password%><br>
    ȷ�����룺<%=password2%><br>
    �Ա�<%=sex%><br>
    ְҵ��<%=career%><br>
    �绰���룺<%=tel%><br>
    �������䣺<%=email%><br>
    ��Ȥ���ã�
    <%
        for (String favAct : fav) {
            out.print(favAct + " ");
        }
    %>
    <br>
    ���ҽ��ܣ�<%=intro%><br>
</p>
</body>
</html>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<HTML>
<BODY>

　<% String str = null;

    str = request.getParameter("boy");

    if (str.length() == 0) {
        response.sendRedirect("exer7_3.jsp");

    } else {
        out.print("欢迎您来到本网页！");

        out.print(str);

    }

%>

</BODY>
</HTML>
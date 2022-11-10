<%@ page contentType="text/html; charset=gb2312" %>

<%! String getDate()

{   return new java.util.Date().toLocaleString();

}

%>

<html>

<body>

<!--这是是一个典型的JSP，它包含了JSP中常用的各种元素-->

<%--进行登录检查--%>

<%

    String name=request.getParameter("name");

    String password=request.getParameter("password");

    // if验证通过，forward-->welcome.jsp

    //else forward-->login.jsp

    if(password.equals("jspuser"))

    {

%>

<jsp:forward page="welcome.jsp">

    <jsp:param name="user" value="<%=name%>"/>

    <jsp:param name="time" value="<%=getDate()%>"/>

</jsp:forward>

<%

} else {

%>

<jsp:forward page="login.jsp">

    <jsp:param name="user" value="<%=name%>"/>

</jsp:forward>

<%}%>

</body>

</html>
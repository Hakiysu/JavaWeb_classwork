<%@ page contentType="text/html; charset=gb2312" %>

<%! String getDate()

{   return new java.util.Date().toLocaleString();

}

%>

<html>

<body>

<!--������һ�����͵�JSP����������JSP�г��õĸ���Ԫ��-->

<%--���е�¼���--%>

<%

    String name=request.getParameter("name");

    String password=request.getParameter("password");

    // if��֤ͨ����forward-->welcome.jsp

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
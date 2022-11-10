<%@ page contentType="text/html; charset=gb2312" language="java" %>

恭喜你于<%=request.getParameter("time")%>时刻登录成功!<br>

欢迎你,<%=request.getParameter("name")%>!

<%@ include file="footer.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<%@ page language="java" contentType="text/html; charset=gb2312"%>

<%@ page info="一个简单的登录程序" %>

<html>

<head>

  <title>一个简单的登录程序</title>

</head>

<body>

<%--登录界面--%>

<div>

  用户登录

  <hr>

  <form method=get action=login_check.jsp>

    <table>

      <tr>

        <td>Please input your name</td>

        <td><input type=text name=name value=<%=request.getParameter("name")%>> </td>

      </tr>

      <tr>

        <td>Please input password</td>

        <td><input type=password name=password></td>

      </tr>

      <tr colspan=2>

        <td><input type=submit value=login></td>

      </tr>

    </table>

  </form>

</div>

<jsp:include page="footer.jsp"/>

</body>

</html>
<%@ page contentType="text/html; charset=gb2312" language="java"

         import="java.sql.*" errorPage=""%>

<html>

<head>

    <title>新闻首页模板设计</title>

</head>

<body>

<table width="600" height="388" border="1">

    <tr>

        <td height="50" colspan="2"><%@ include file="top.jsp"%></td>

    </tr>

    <tr>

        <td width="149" height="282"><%@ include file="left.jsp"%></td>

        <td width="435"><%@ include file="right.jsp"%></td>

    </tr>

    <tr>

        <td height="46" colspan="2"><%@ include file="down.jsp"%></td>

    </tr>

</table>

</body>

</html>
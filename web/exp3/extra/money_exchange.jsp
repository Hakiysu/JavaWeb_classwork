<%--
  Created by IntelliJ IDEA.
  User: Hakiysu
  Date: 2022/10/24
  Time: 8:14:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>金额换算</title>
</head>
<body>

<%
    String usd = request.getParameter("usd");
    String trans = request.getParameter("trans");
    double usdR = 0, transR = 0;
    if (usd != null && trans != null) {
        usdR = Double.parseDouble(usd);
        transR = Double.parseDouble(trans);
    }
    double cnyR = usdR * transR;
%>
<h2 align="center">金额换算</h2>
<form action="money_exchange.jsp" method="post" name=form>

    <table align="center" border="1" width="35%">

        <tr>
            <th>美元</th>
            <td><input name="usd" type="text" value="1"></td>
        </tr>
        <tr>
            <th>人民币</th>
            <td><%=cnyR%>
            </td>
        </tr>
        <tr>
            <th>汇率</th>
            <td><input name="trans" type="text" value="6.3"></td>
        </tr>

        <tr>
            <td align="center" colspan="2"><input type="submit" value="提交"></td>
        </tr>

    </table>

</form>

</body>
</html>

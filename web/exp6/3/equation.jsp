<%--
  Created by IntelliJ IDEA.
  User: Hakiysu
  Date: 2022/11/7
  Time: 8:45:28
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="Calculator.Equation" %>
<html>
<head>
    <title>CalculateNumber</title>
</head>
<body>
<jsp:useBean id="computer" class="Calculator.Equation" scope="request"/>
一元二次方程格式：ax&#178;+bx+c=0
<FORM action="" method=post name=form>
    a<Input type=text name="a" value=0 size=8><br>
    b<Input type=text name="b" value=0 size=8><br>
    c<Input type=text name="c" value=0 size=8><br>
    <INPUT TYPE="submit" value="提交" name="submit">
</FORM>
<jsp:setProperty name="computer" property="*"/>
a:
<jsp:getProperty name="computer" property="a"/>
<br>
b:
<jsp:getProperty name="computer" property="b"/>
<br>
c:
<jsp:getProperty name="computer" property="c"/>
<br>
<%
    if (computer.getA() == 0 && computer.getB() == 0 && computer.getC() == 0) {
        out.print("请输入一元二次方程的三个系数！");
    } else {
        if (computer.calculateDelta() == 2) {
            out.print("实数根有2个，分别为：" + computer.getX1() + "," + computer.getX2());
        } else if (computer.calculateDelta() == 1) {
            out.print("实数根只有1个，为：" + computer.getX1());
        } else out.print("此一元二次方程没有实数根！");
    }
%>
</body>
</html>

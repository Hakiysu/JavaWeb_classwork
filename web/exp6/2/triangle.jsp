<%--
  Created by IntelliJ IDEA.
  User: Hakiysu
  Date: 2022/11/7
  Time: 8:12:50
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="tom.jiafei.Triangle" %>
<html>
<head>
    <title>CalculateTriangle</title>
</head>
<body>
<jsp:useBean id="computer" class="tom.jiafei.Triangle" scope="request"/>
<FORM action="" method=post name=form>
    边A<Input type=text name="sideA" value=0 size=8><br>
    边B<Input type=text name="sideB" value=0 size=8><br>
    边C<Input type=text name="sideC" value=0 size=8><br>
    <INPUT TYPE="submit" value="提交" name="submit">
</FORM>
<jsp:setProperty name="computer" property="*"/>
边A:
<jsp:getProperty name="computer" property="sideA"/>
<br>
边B:
<jsp:getProperty name="computer" property="sideB"/>
<br>
边C:
<jsp:getProperty name="computer" property="sideC"/>
<br>
<br>
<%
    if (computer.isTriangle()) {
        out.print("三角形面积："+computer.getArea());
    } else if (computer.getSideA() == 0 && computer.getSideB() == 0 && computer.getSideC() == 0) {
    } else {
        out.print("三边无法组成三角形！请重新输入！");
    }
%>
</body>
</html>

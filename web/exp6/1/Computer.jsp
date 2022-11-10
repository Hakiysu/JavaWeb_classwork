<%--
  Created by IntelliJ IDEA.
  User: Hakiysu
  Date: 2022/11/3
  Time: 17:24:53
--%>
<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="tom.jiafei.CalendarBean" %>
<HTML>
<BODY bgcolor=cyan><Font size=4>
    <jsp:useBean id="computer" class="tom.jiafei.ComputerBean" scope="request"/>
    <FORM action="" method=post name=form>
        <Input type=text name="numberOne" value=0 size=8>
        <Select name="operator">
            <Option value="+">+(加)
            <Option value="-">-（减）
            <Option value="*">*（乘）
            <Option value="/">/（除）
        </Select>
        <Input type=text name="numberTwo" value=0 size=8>
        <BR>
        <INPUT TYPE="submit" value="提交你的选择" name="submit">
    </FORM>
    <jsp:setProperty name="computer" property="*"/>
    <jsp:getProperty name="computer" property="numberOne"/>
    <jsp:getProperty name="computer" property="operator"/>
    <jsp:getProperty name="computer" property="numberTwo"/>=
    <jsp:getProperty name="computer" property="result"/>
</BODY>
</HTML>
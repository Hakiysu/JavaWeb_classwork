<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<HTML>
<BODY bgcolor=cyan><FONT Size=3>
    <P>点击超链接，连接到main.jsp的页面,去修改姓名。
        <A HREF="main.jsp"> 欢迎去main.jsp！</A>
    <P>这里是食品柜台，请选择您要购买的食品：
    <FORM action="" method=post name=form>
        <input type="checkbox" name="choice" value="香肠">香肠
        <input type="checkbox" name="choice" value="苹果">苹果
        <input type="checkbox" name="choice" value="酱油">酱油
        <input type="checkbox" name="choice" value="饮料">饮料
        </BR>
        <INPUT TYPE="submit" value="提交" name="submit">
    </FORM>
</FONT>
<% String[] foodName = request.getParameterValues("choice");
    if (foodName != null) {
        for (int k = 0; k < foodName.length; k++) {
            session.setAttribute(foodName[k], foodName[k]);
        }
    }
%>
<P>点击超链接，连接到count.jsp的页面,去查看购物车中的商品。
    <A HREF="count.jsp"> 欢迎去count.jsp！</A>
</BODY>
</HTML>
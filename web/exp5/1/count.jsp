<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*" %>
<HTML>
<P>这里是结帐处,您的姓名以及选择的商品：
        <%
        String personName=(String)session.getAttribute("customerName");
        String personAge=(String)session.getAttribute("customerAge");
        String personSex=(String)session.getAttribute("customerSex");

        out.println("<br>您的姓名："+personName);
        out.println("<br>您的年龄："+personAge);
        out.println("<br>您的性别："+personSex);

    Enumeration enumGoods=session.getAttributeNames();

    out.println("<br>购物车中的商品：<br>");

    while(enumGoods.hasMoreElements())

            {  String key=(String)enumGoods.nextElement();
               String goods=(String)session.getAttribute(key);
               if(!(goods.equals(personName))&&!(goods.equals(personAge))&&!(goods.equals(personSex)))
                 out.println(goods+"<br>");
            }
%>
<P>点击超链接，连接到food.jsp的页面,购买食品。
    <A HREF="food.jsp"> 欢迎去food.jsp！</A>
<P>点击超链接，连接到main.jsp的页面,去修改姓名。
    <A HREF="main.jsp"> 欢迎去main.jsp！</A>
    </FONT></BODY></HTML>
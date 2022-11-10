<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<HTML>
<BODY bgcolor=yellow><FONT Size=2>
    <P>欢迎来到本页面，请输入您的信息：
    <FORM action="" method=post name=form>
        姓名：<INPUT type="text" name="name"><br>
        年龄：<input type="text" name="age"><br>
        性别：<input checked name="sex" type="radio" value="男">男　
        <input name="sex" type="radio" value="女">女<br>
        <INPUT TYPE="submit" value="送出" name=submit>
    </FORM>
        <%
          String name=request.getParameter("name");
          String age=request.getParameter("age");
          String sex=request.getParameter("sex");
       if(name==null)
       {  name="";
       }
       else
       {
           session.setAttribute("customerName",name);
           session.setAttribute("customerAge",age);
           session.setAttribute("customerSex",sex);
       }
   %>
        <% if(name.length()>0)

      {

   %> <P> 点击超链接，连接到food.jsp的页面,去采购食品。
    <A HREF="food.jsp"> 欢迎去食品柜台！</A>
        <% }

   %>
    <FONT>
</BODY>
</HTML>
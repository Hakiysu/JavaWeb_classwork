<%@ page contentType="text/html;charset=GB2312" %>
<!-- jsp指令标签 -->
<%@ page import="java.util.Date" %>
<!-- jsp指令标签 -->
<%! Date date;                   // 数据声明
    int sum;
    
    public int add(int m, int n)       // 方法声明
    {
        return m + n;
    }
%>
<HTML>
<BODY bgcolor=cyan> <!—html标记 -->
<FONT size=4><P>程序片创建Date对象：
        <% Date date=new Date();        //java程序片
      out.println("<BR>"+date);
      sum=add(12,34);
%>
    <BR>在下一行输出和:<BR>
        <%= sum+100 %>              <!-- Java表达式 -->
</FONT></BODY>
</HTML>
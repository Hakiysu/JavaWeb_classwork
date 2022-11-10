<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="java.sql.*" %>
<HTML>
<BODY>
<%!
    int pageSize = 3; //每页显示的记录数。
    int pageCount = 0; //分页后的总页数。
%>
<%-- 客户通过表单提交欲要显示的页码数--%>
<FORM action="" method=get>
    输入页码数<Input Type=text name=showPage size=2>
    <Input Type=submit name=g value=提交>
</FORM>
<%
    request.setCharacterEncoding("GBK");
    Connection con;
    Statement sql;
    ResultSet rs;
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
    } catch (ClassNotFoundException e) {
    }
    try {
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student?&useSSL=false&serverTimezone=UTC", "root", "hakiysu@MYSQLDB233");
        sql = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);
        //返回可滚动的结果集：
        rs = sql.executeQuery("SELECT * FROM student");
        //将游标移动到最后一行：
        rs.last();
        //获取最后一行的行号：
        int lastRow = rs.getRow();
        //计算分页后的总页数：
        pageCount = (lastRow % pageSize == 0) ? (lastRow / pageSize) : (lastRow / pageSize + 1);
        //当前显示的初始页数：
        int showPage = 1;
        //告知客户总页数：
%>
<a href="showByPage.jsp?showPage=1">首页</a>
<a href="showByPage.jsp?showPage=<%=pageCount%>">末页</a>
<P> 共有<%=pageCount%>页
    <BR>每页显示<%=pageSize%>条记录.
    <% //获取客户想要显示的页数：
        String integer = request.getParameter("showPage");
        if (integer == null) {
            integer = "1";
        }
        try {
            showPage = Integer.parseInt(integer);
        } catch (NumberFormatException e) {
            showPage = 1;
        }
        if (showPage <= 1) {
            showPage = 1;
        }
        if (showPage >= pageCount) {
            showPage = pageCount;
        }
    %>
    <BR>目前显示第<%=showPage%>页
    <%
            //如果要显示第showPage页，那么游标应移到posion的值是：
            int posion = (showPage - 1) * pageSize + 1;
            rs.absolute(posion); // 设置游标的位置
            out.print("<Table Border>");
            out.print("<TR>");
            out.print("<TH width=100>" + "学号");
            out.print("<TH width=100>" + "姓名");
            out.print("<TH width=50>" + "操作系统");
            out.print("<TH width=50>" + "微机原理");
            out.print("<TH width=50>" + "数据结构");
            out.print("</TR>");
            for (int i = 1; i <= pageSize; i++) {
                out.print("<TR>");
                out.print("<TD >" + rs.getString(1) + "</TD>");
                out.print("<TD >" + rs.getString(2) + "</TD>");
                out.print("<TD >" + rs.getInt(3) + "</TD>");
                out.print("<TD >" + rs.getInt(4) + "</TD>");
                out.print("<TD >" + rs.getInt(5) + "</TD>");
                out.print("</TR>");
                rs.next();
            }
            out.print("</Table>");
            con.close();
        } catch (SQLException e1) {
        }
    %>
</p>
</BODY>
</HTML>
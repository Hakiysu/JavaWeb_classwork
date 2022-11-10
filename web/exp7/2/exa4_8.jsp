<%@ page contentType="text/html;charset=GBK" %>
<%@ page import="java.sql.*" %>
<HTML>
<BODY>
<Font size=4>
    <FORM action="newResult.jsp" method=post>
        输入要修改成绩的同学的姓名：<BR>
        <Input type="text" name="new_xm">
        <BR>输入新的操作系统成绩：
        <Input type="text" name="new_czxt">
        <BR>输入新的微机原理成绩：
        <Input type="text" name="new_wjyl">
        <BR>输入新的数据结构成绩：
        <Input type="text" name="new_sjjg">
        <BR><Input type="submit" name="b" value="提交更新">
    </FORM>
    
    <form action="newResult.jsp" method="post">
        输入要删除的同学的姓名：<input type="text" name="delName">
        <input type="submit" name="sendInf" value="提交">
    </form>
        
        <P>数据库更新前的数据记录是：
                <%
                request.setCharacterEncoding("GBK");
                String name, number;
                int czxt, wjyl, sjjg;
                Connection con;
                Statement sql;
                ResultSet rs;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            out.print("abb" + e + "bb");
        }
        try {
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student?&useSSL=false&serverTimezone=UTC", "root", "hakiysu@MYSQLDB233");
            sql = con.createStatement();
            rs = sql.executeQuery("SELECT * FROM student");
            out.print("<Table Border>");
            out.print("<TR>");
            out.print("<TH width=100>" + "学号");
            out.print("<TH width=100>" + "姓名");
            out.print("<TH width=50>" + "操作系统");
            out.print("<TH width=50>" + "微机原理");
            out.print("<TH width=50>" + "数据结构");
            out.print("</TR>");
            while (rs.next()) {
                out.print("<TR>");
                number = rs.getString("xh");
                out.print("<TD >" + number + "</TD>");
                name = rs.getString("xm");
                out.print("<TD >" + name + "</TD>");
                czxt = rs.getInt("czxt");
                out.print("<TD >" + czxt + "</TD>");
                wjyl = rs.getInt("wjyl");
                out.print("<TD >" + wjyl + "</TD>");
                sjjg = rs.getInt("sjjg");
                out.print("<TD >" + sjjg + "</TD>");
                out.print("</TR>");
            }
            out.print("</Table>");
            con.close();
        } catch (SQLException e1) {
            out.print("aaaa" + e1 + "aaaa");
        }
                %>
</Font></BODY>
</HTML>
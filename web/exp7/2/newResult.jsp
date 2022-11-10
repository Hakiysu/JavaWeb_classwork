<%@ page contentType="text/html;charset=GBK" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.nio.charset.StandardCharsets" %>
<HTML>
<BODY>
<Font size=1>
    <% //获取提交的姓名：
        request.setCharacterEncoding("GBK");
        String newxm = request.getParameter("new_xm");
        if (newxm == null) {
            newxm = "";
        } else {
            System.out.println(newxm + "score will be update");
            String newczxt = request.getParameter("new_czxt");
            if (newczxt == null) {
                newczxt = "-100";
            }
            String newwjyl = request.getParameter("new_wjyl");
            if (newwjyl == null) {
                newwjyl = "-100";
            }
            String newsjjg = request.getParameter("new_sjjg");
            if (newsjjg == null) {
                newsjjg = "-100";
            }
            Connection con = null;
            Statement sql = null;
            ResultSet rs = null;
            String xh, xm;
            int czxt, wjyl, sjjg;
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
            } catch (
                    ClassNotFoundException e) {
                out.print("mmm" + e);
            }
            try {
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student?&useSSL=false&serverTimezone=UTC", "root", "hakiysu@MYSQLDB233");
                sql = con.createStatement();
                String condition1 =
                        "UPDATE student SET czxt = " + newczxt + " WHERE xm=" + "'" + newxm + "'",
                        condition2 =
                                "UPDATE student SET wjyl = " + newwjyl + " WHERE xm=" + "'" + newxm + "'",
                        condition3 =
                                "UPDATE student SET sjjg= " + newsjjg + " WHERE xm=" + "'" + newxm + "'";
                //执行更新操作：
                sql.executeUpdate(condition1);
                sql.executeUpdate(condition2);
                sql.executeUpdate(condition3);
                //显示更新后的表中的记录：
                out.print("更新后的表的记录：");
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
                    xh = rs.getString(1);
                    out.print("<TD >" + xh + "</TD>");
                    xm = rs.getString(2);
                    out.print("<TD >" + xm + "</TD>");
                    czxt = rs.getInt(3);
                    out.print("<TD >" + czxt + "</TD>");
                    wjyl = rs.getInt(4);
                    out.print("<TD >" + wjyl + "</TD>");
                    sjjg = rs.getInt(5);
                    out.print("<TD >" + sjjg + "</TD>");
                    out.print("</TR>");
                }
                out.print("</Table>");
                con.close();
            } catch (SQLException e) {
                out.print(e);
            }
        }
    %>
    <%
        request.setCharacterEncoding("GBK");
        String delName = request.getParameter("delName");
        if(delName==null){
            delName="";
        }
        else {
            System.out.println("Deleting student information");
            String xh,xm;
            int czxt, wjyl, sjjg;
            Connection connector = null;
            Statement sqlSentence = null;
            ResultSet result = null;
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
            } catch (
                    ClassNotFoundException e) {
                out.print("MySQL:" + e);
            }
            try {
                connector = DriverManager.getConnection("jdbc:mysql://localhost:3306/student?&useSSL=false&serverTimezone=UTC", "root", "hakiysu@MYSQLDB233");
                sqlSentence = connector.createStatement();
                String deleteStudent = "delete from student where xm=" + "'" + delName + "'";
                //执行更新操作：
                sqlSentence.executeUpdate(deleteStudent);
                out.print("更新后的表的记录：");
                result = sqlSentence.executeQuery("SELECT * FROM student");
                out.print("<Table Border>");
                out.print("<TR>");
                out.print("<TH width=100>" + "学号");
                out.print("<TH width=100>" + "姓名");
                out.print("<TH width=50>" + "操作系统");
                out.print("<TH width=50>" + "微机原理");
                out.print("<TH width=50>" + "数据结构");
                out.print("</TR>");
                while (result.next()) {
                    out.print("<TR>");
                    xh = result.getString(1);
                    out.print("<TD >" + xh + "</TD>");
                    xm = result.getString(2);
                    out.print("<TD >" + xm + "</TD>");
                    czxt = result.getInt(3);
                    out.print("<TD >" + czxt + "</TD>");
                    wjyl = result.getInt(4);
                    out.print("<TD >" + wjyl + "</TD>");
                    sjjg = result.getInt(5);
                    out.print("<TD >" + sjjg + "</TD>");
                    out.print("</TR>");
                }
                out.print("</Table>");
                connector.close();
            } catch (SQLException e) {
                out.print(e);
            }
        }
    %>
</FONT>
</BODY>
</HTML>
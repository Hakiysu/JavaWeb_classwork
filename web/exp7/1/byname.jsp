<%@ page contentType="text/html;charset=GBK" language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.nio.charset.StandardCharsets" %>
<HTML>
<BODY>
<% //��ȡ�ύ��������
    request.setCharacterEncoding("GBK");
    String name = request.getParameter("name");
    if (name == null) {
        name = "";
    }
    Connection con = null;
    Statement sql = null;
    ResultSet rs = null;
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
    } catch (ClassNotFoundException e) {
    }
    try {
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student?&useSSL=false&serverTimezone=UTC", "root", "hakiysu@MYSQLDB233");
        sql = con.createStatement();
        System.out.println(name);
        String condition = "SELECT * FROM student WHERE xm = " + "'" + name + "'";
        System.out.println(condition);
        rs = sql.executeQuery(condition);
        out.print("<Table Border>");
        out.print("<TR>");
        out.print("<TH width=100>" + "ѧ��");
        out.print("<TH width=100>" + "����");
        out.print("<TH width=50>" + "����ϵͳ");
        out.print("<TH width=50>" + "΢��ԭ��");
        out.print("<TH width=50>" + "���ݽṹ");
        out.print("</TR>");
        while (rs.next()) {
            out.print("<TR>");
            out.print("<TD >" + rs.getString(1) + "</TD>");
            out.print("<TD >" + rs.getString(2) + "</TD>");
            out.print("<TD >" + rs.getInt("czxt") + "</TD>");
            out.print("<TD >" + rs.getInt("wjyl") + "</TD>");
            out.print("<TD >" + rs.getInt("sjjg") + "</TD>");
            out.print("</TR>");
        }
        out.print("</Table>");
        con.close();
    } catch (SQLException e) {
    }
%>
</BODY>
</HTML>
<%@ page contentType="text/html;charset=GBK" language="java" %>
<%@ page import="java.sql.*" %>
<HTML>
<BODY>
<% //��ȡ�ύ�ķ��������ֵ����Сֵ��
    request.setCharacterEncoding("GBK");
    String wjylmax = request.getParameter("wjylmax");
    if (wjylmax == null) {
        wjylmax = "100";
    }
    String wjylmin = request.getParameter("wjylmin");
    if (wjylmin == null) {
        wjylmin = "0";
    }
    String czxtmax = request.getParameter("czxtmax");
    if (czxtmax == null) {
        czxtmax = "100";
    }
    String czxtmin = request.getParameter("czxtmin");
    if (czxtmin == null) {
        czxtmin = "0";
    }
    Connection con = null;
    Statement sql = null;
    ResultSet rs = null;
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
    } catch (ClassNotFoundException e) {
    }
    try {
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student?&useSSL=false&serverTimezone=Asia/Shanghai", "root", "hakiysu@MYSQLDB233");
        sql = con.createStatement();
        String eCondition = "wjyl <= " + wjylmax + " AND " + "wjyl >= " + wjylmin;
        String mCondition = "czxt <= " + czxtmax + " AND " + "czxt >= " + czxtmin;
        String condition = "SELECT * FROM student WHERE " + mCondition + " and " + eCondition;
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
            out.print("<TD >" + rs.getInt(3) + "</TD>");
            out.print("<TD >" + rs.getInt(4) + "</TD>");
            out.print("<TD >" + rs.getInt(5) + "</TD>");
            out.print("</TR>");
        }
        out.print("</Table>");
        con.close();
    } catch (SQLException e) {
    }
%>
</BODY>
</HTML>
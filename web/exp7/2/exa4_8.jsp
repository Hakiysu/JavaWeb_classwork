<%@ page contentType="text/html;charset=GBK" %>
<%@ page import="java.sql.*" %>
<HTML>
<BODY>
<Font size=4>
    <FORM action="newResult.jsp" method=post>
        ����Ҫ�޸ĳɼ���ͬѧ��������<BR>
        <Input type="text" name="new_xm">
        <BR>�����µĲ���ϵͳ�ɼ���
        <Input type="text" name="new_czxt">
        <BR>�����µ�΢��ԭ��ɼ���
        <Input type="text" name="new_wjyl">
        <BR>�����µ����ݽṹ�ɼ���
        <Input type="text" name="new_sjjg">
        <BR><Input type="submit" name="b" value="�ύ����">
    </FORM>
    
    <form action="newResult.jsp" method="post">
        ����Ҫɾ����ͬѧ��������<input type="text" name="delName">
        <input type="submit" name="sendInf" value="�ύ">
    </form>
        
        <P>���ݿ����ǰ�����ݼ�¼�ǣ�
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
            out.print("<TH width=100>" + "ѧ��");
            out.print("<TH width=100>" + "����");
            out.print("<TH width=50>" + "����ϵͳ");
            out.print("<TH width=50>" + "΢��ԭ��");
            out.print("<TH width=50>" + "���ݽṹ");
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
<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="java.sql.*" %>
<HTML>
<BODY>
<%!
    int pageSize = 3; //ÿҳ��ʾ�ļ�¼����
    int pageCount = 0; //��ҳ�����ҳ����
%>
<%-- �ͻ�ͨ�����ύ��Ҫ��ʾ��ҳ����--%>
<FORM action="" method=get>
    ����ҳ����<Input Type=text name=showPage size=2>
    <Input Type=submit name=g value=�ύ>
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
        //���ؿɹ����Ľ������
        rs = sql.executeQuery("SELECT * FROM student");
        //���α��ƶ������һ�У�
        rs.last();
        //��ȡ���һ�е��кţ�
        int lastRow = rs.getRow();
        //�����ҳ�����ҳ����
        pageCount = (lastRow % pageSize == 0) ? (lastRow / pageSize) : (lastRow / pageSize + 1);
        //��ǰ��ʾ�ĳ�ʼҳ����
        int showPage = 1;
        //��֪�ͻ���ҳ����
%>
<a href="showByPage.jsp?showPage=1">��ҳ</a>
<a href="showByPage.jsp?showPage=<%=pageCount%>">ĩҳ</a>
<P> ����<%=pageCount%>ҳ
    <BR>ÿҳ��ʾ<%=pageSize%>����¼.
    <% //��ȡ�ͻ���Ҫ��ʾ��ҳ����
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
    <BR>Ŀǰ��ʾ��<%=showPage%>ҳ
    <%
            //���Ҫ��ʾ��showPageҳ����ô�α�Ӧ�Ƶ�posion��ֵ�ǣ�
            int posion = (showPage - 1) * pageSize + 1;
            rs.absolute(posion); // �����α��λ��
            out.print("<Table Border>");
            out.print("<TR>");
            out.print("<TH width=100>" + "ѧ��");
            out.print("<TH width=100>" + "����");
            out.print("<TH width=50>" + "����ϵͳ");
            out.print("<TH width=50>" + "΢��ԭ��");
            out.print("<TH width=50>" + "���ݽṹ");
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
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ page import="java.util.*" %>

<HTML>
<BODY>

<% int a = 2200;
    long b = 3456;
    boolean c = true;

    out.println(a);

    out.println(b);

    out.print("<br>");

    out.println(c);

%>

<Left><p><Font size=2>以下是一个表格</Font>

        <%  out.print("<Font face=隶书 size=2 >");

       out.println("<table Border=1>");

       out.println("<tr >");

            out.println("<th width=80>"+"姓名"+"</th>");

            out.println("<th width=60>"+"性别"+"</th>");

            out.println("<th width=200>"+"出生日期"+"</th>");

       out.println("</tr>");

       out.println("<tr >");

            out.println("<td >"+"张三"+"</td>");

            out.println("<td >"+"男"+"</td>");

            out.println("<td >"+"1988年5月"+"</td>");

       out.println("</tr>");

       out.println("<tr >");

            out.println("<td >"+"李四"+"</td>");

            out.println("<td >"+"男"+"</td>");

            out.println("<td >"+"1987年10月"+"</td>");

       out.println("</tr>");

       out.println("</Table>");

       out.print("</Font>")  ;

  %>

    </Center>
</BODY>
</HTML>
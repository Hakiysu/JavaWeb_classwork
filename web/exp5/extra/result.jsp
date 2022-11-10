<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String sgn1 = (String) session.getAttribute("guessNum1");
    String sgn2 = (String) session.getAttribute("guessNum2");
    int rn1 = (int) session.getAttribute("rNum1");
    int rn2 = (int) session.getAttribute("rNum2");
    int gn1= Integer.parseInt(sgn1);
    int gn2= Integer.parseInt(sgn2);
    if (((gn1 == rn1) && (gn2 == rn2)) || ((gn1 == rn2) && (gn2 == rn1))) {
        response.sendRedirect("success.jsp");
    } else if ((gn1 > rn1 && gn2 > rn2) || (gn1 > rn2 && gn2 > rn1)) {
        response.sendRedirect("large2.jsp");
    } else if ((gn1 < rn1 && gn2 < rn2) || (gn1 < rn2 && gn2 < rn1)) {
        response.sendRedirect("small2.jsp");
    } else if ((gn1 > rn1 && gn2 < rn2)) {
        response.sendRedirect("largesmall.jsp");
    } else if ((gn1 < rn2 && gn2 > rn1)) {
        response.sendRedirect("smalllarge.jsp");
    }
    if (gn1 == rn1) {
        if (gn2 > rn2) response.sendRedirect("large1.jsp");
        else response.sendRedirect("small1.jsp");
    }
    if (gn2 == rn2) {
        if (gn1 > rn1) response.sendRedirect("large1.jsp");
        else response.sendRedirect("small1.jsp");
    }
    if (gn1 == rn2) {
        if (gn2 > rn1) response.sendRedirect("large1.jsp");
        else response.sendRedirect("small1.jsp");
    }
    if (gn2 == rn1) {
        if (gn1 > rn2) response.sendRedirect("large1.jsp");
        else response.sendRedirect("small1.jsp");
    }
%>
</body>
</html>

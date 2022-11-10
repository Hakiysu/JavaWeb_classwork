<%@ tag language="java" pageEncoding="UTF-8" %>

<%@ attribute name="a" required="true" %>
<%@ attribute name="b" required="true" %>
<%@ attribute name="op" required="true" %>
<%@ variable name-given="result" variable-class="java.lang.Double" scope="AT_END" %>
<% try {
    double c = Double.parseDouble(a);

    double d = Double.parseDouble(b);
    double result = 0;
    switch (op) {
        case "+":
            result = c + d;
            break;
        case "-":
            result = c - d;
            break;
        case "*":
            result = c * d;
            break;
        case "/":
            result = c / d;
            break;
        default:
            break;
    }

    jspContext.setAttribute("result", result);
} catch (Exception e) {
    jspContext.setAttribute("result", 0.0);
}
%>
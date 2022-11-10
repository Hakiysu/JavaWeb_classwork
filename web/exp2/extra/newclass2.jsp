<%--
  Created by IntelliJ IDEA.
  User: Hakiysu
  Date: 2022/10/13
  Time: 16:52:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>学生信息</title>
</head>
<body>
<%! public class student {
    int score;
    String id, name;

    student(String id, String name, int score) {
        this.id = id;
        this.name = name;
        this.score = score;
    }

    String getId() {
        return id;
    }

    String getName() {
        return name;
    }

    int getScore() {
        return score;
    }

    String getClassId() {
        return id.substring(0, 4);
    }
}
%>
<%
    //init example student
    student s1 = new student("2701200301", "张三", 100);
%>
<table align="center" border="1" width="35%">
    <tbody>
    <tr>
        <td>班号</td>
        <td><%=s1.getClassId()%>
        </td>
    </tr>
    <tr>
        <td>学号</td>
        <td><%=s1.getId()%>
        </td>
    </tr>
    <tr>
        <td>姓名</td>
        <td><%=s1.getName()%>
        </td>
    </tr>
    <tr>
        <td>成绩</td>
        <td><%=s1.getScore()%>
        </td>
    </tr>
    </tbody>
    <colgroup>
        <col>
        <col>
    </colgroup>
</table>

</body>
</html>

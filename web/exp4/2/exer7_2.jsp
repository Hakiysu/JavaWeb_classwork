<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<HTML>
<BODY bgcolor=cyan><Font size=2>

    <P>在学习response对象的setContentType方法

    <FORM action="" method="post" name=form>

        <P>将当前页面用MS-Word显示吗？

            <INPUT TYPE="submit" value="MS-Word显示" name="submit">

        <P>将当前页面用MS-Powerpoint显示吗？

            <INPUT TYPE="submit" value="MS-Powerpoint显示" name="submit">

    </FORM>

    <% String str = request.getParameter("submit");

        if (str == null) {
            str = "";

        }

        if (str.equals("MS-Word显示")) {
            response.setContentType("application/msword");

        } else if (str.equals("MS-Powerpoint显示")) {
            response.setContentType("application/vnd.ms-powerpoint");

        }

    %>

</FONT></BODY>
</HTML>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib tagdir="/WEB-INF/tags" prefix="com"%>

<HTML><BODY bgcolor=cyan><FONT size=3>

    <FORM  action="" method=get name=form>

        <INPUT type="text" name="number">

        <INPUT TYPE="submit" value="提交" name="submit">

    </FORM>

    <% String number=request.getParameter("number");

        if(number==null)

        {  out.println("请在文本框中输入数字，按提交按钮");

        }

        else{

    %>   <p> 调用Computer.tag文件负责计算平方根

        <%  try{  double n=Double.parseDouble(number);

           if(n>=0)

             {  double r=Math.sqrt(n) ;

                out.print("<BR>"+n+"的平方根：");

                out.print("<BR>"+r);

             }

           else

             {  out.print("<BR>"+"请输入一个正数");

             }

        }

     catch(NumberFormatException e)

        {  out.print("<BR>"+"请输入数字字符");

        }
}
%>

</FONT></BODY></HTML>
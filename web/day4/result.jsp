<%@ page import="java.util.Date" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="kr.co.bit.day4.StudentVO" %><%--
  Created by IntelliJ IDEA.
  User: Huxx_j
  Date: 2018. 3. 26.
  Time: AM 9:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
//    Date date = (Date) session.getAttribute("date");
//    String now = String.format("%s:%s:%s" , date.getHours(), date.getMinutes(), date.getSeconds());
//    out.print(now);
//    String time = request.getParameter("time");
//    out.print(time);
%>

<%
    ArrayList<StudentVO> list = (ArrayList<StudentVO>)session.getAttribute("list");
//    out.print(list.size());

    StringBuffer stringBuffer = new StringBuffer("<table>");
    StudentVO vo = null;
    for (int i = 0; i<list.size(); i++) {
        vo = list.get(i);
        stringBuffer.append("<tr>");
        stringBuffer.append("<td>" + vo.getStdNo()+"</td>");
        stringBuffer.append("<td>" + vo.getEmail()+"</td>");
        stringBuffer.append("<td>" + vo.getKor()+"</td>");
        stringBuffer.append("<td>" + vo.getEng()+"</td>");
        stringBuffer.append("<td>" + vo.getMath()+"</td>");
        stringBuffer.append("<td>" + vo.getSci()+"</td>");
        stringBuffer.append("<td>" + vo.getHis()+"</td>");
        stringBuffer.append("<td>" + vo.getTotal()+"</td>");
        stringBuffer.append("<td>" + vo.getMgrCode()+"</td>");
        stringBuffer.append("<td>" + vo.getAccCode()+"</td>");
        stringBuffer.append("<td>" + vo.getLocalCode()+"</td>");
        stringBuffer.append("</tr>");

    }
    stringBuffer.append("</table>");
    out.print(stringBuffer.toString());
%>

</body>
</html>

<%@ page import="java.util.Date" %>
<%@ page import="kr.co.bit.day4.FileDataService" %>
<%@ page import="java.io.File" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="kr.co.bit.day4.StudentVO" %><%--
  Created by IntelliJ IDEA.
  User: Huxx_j
  Date: 2018. 3. 26.
  Time: AM 9:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>파일처리</title>
</head>
<body>
<%
    FileDataService fileDataService = new FileDataService();
//
//    Date date = fileDataService.getDataTime();
//
//    session.setAttribute("date",date);
//    response.sendRedirect("result.jsp");

    String path = application.getRealPath("WEB-INF/file/Abc1115.txt");
        ArrayList<StudentVO> list = fileDataService.getFileData(path);

        session.setAttribute("list",list);
        response.sendRedirect("result.jsp");
%>

</body>
</html>

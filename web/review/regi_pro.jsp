<%@ page import="kr.co.bit.day4.MemberVO" %><%--
  Created by IntelliJ IDEA.
  User: Huxx_j
  Date: 2018. 3. 27.
  Time: AM 9:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
    String id = request.getParameter("id");
    String pw = request.getParameter("pw");
    String name = request.getParameter("name");
    String zip1 = request.getParameter("zip1");
    String zip2 = request.getParameter("zip2");
    String add1 = request.getParameter("add1");
    String add2 = request.getParameter("add2");
    String email = request.getParameter("email");
    String[] lang = request.getParameterValues("lang");
    String tool = request.getParameter("tool");
    String project = request.getParameter("project");

    String[] temp = {"","","",""};

    for (int i = 0; i < lang.length; i++) {
        String index = lang[i];
        int idx = Integer.parseInt(index);
        temp[idx] = index;
    }
    MemberVO memberVO = new MemberVO(id,pw,name,zip1,zip2,add1,add2,email,temp,tool,project);

    session.setAttribute("memberVO",memberVO);
    response.sendRedirect("regi.jsp");
%>

</body>
</html>

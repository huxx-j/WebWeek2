<%@ page import="kr.co.bit.day4.MemberVO" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.AbstractList" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: Huxx_j
  Date: 2018. 3. 26.
  Time: PM 1:05
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

         for (String index : lang) {
             int idx = Integer.parseInt(index);
             temp[idx] = index;
         }




     MemberVO memberVO = new MemberVO();

     memberVO.setId(id);
     memberVO.setPw(pw);
     memberVO.setName(name);
     memberVO.setZip1(zip1);
     memberVO.setZip2(zip2);
     memberVO.setAdd1(add1);
     memberVO.setAdd2(add2);
     memberVO.setEmail(email);
     memberVO.setLang(temp);
     memberVO.setTool(tool);
     memberVO.setProject(project);
     out.print(memberVO.toString());

     session.setAttribute("memberVO", memberVO);
     response.sendRedirect("storage.jsp");
//     String data = String.format("%s=%s&%s=%s&%s=%s&%s=%s&%s=%s&%s=%s&%s=%s&%s=%s&%s=%s&%s=%s&%s=%s",
//             "id",id,"pw",pw,"name",name,"zip1",zip1,"zip2",zip2,"add1",add1,"add2",add2,"email",email,
//             "lang",lang,"tool",tool,"project",project);
//     response.sendRedirect("regist_member.jsp?"+data);
 %>

</body>
</html>

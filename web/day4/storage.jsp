<%@ page import="java.io.FileWriter" %>
<%@ page import="java.io.File" %>
<%@ page import="java.io.BufferedWriter" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="kr.co.bit.day4.MemberVO" %><%--
  Created by IntelliJ IDEA.
  User: Huxx_j
  Date: 2018. 3. 26.
  Time: PM 3:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>데이터 저장장소</title>
</head>
<body>
<%!
    ArrayList<MemberVO> list;
    public void jspInit(){
        list = new ArrayList<>();
    }
%>
<%
    MemberVO memberVO = (MemberVO) session.getAttribute("memberVO");
    String id = request.getParameter("id");
    if (id!=null) {
        for (int i = 0; i < list.size(); i++) {
            MemberVO temp = list.get(i);
            if (temp.getId().equals(id)) {
                System.out.println(temp);
                break;
            }
        }
    }else {
        list.add(memberVO);
        System.out.println(memberVO.getName() + " 님이 등록되었습니다..  등록인원" + list.size());

    }
    response.sendRedirect("read.jsp");
%>

</body>
</html>

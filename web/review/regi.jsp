<%@ page import="kr.co.bit.day4.MemberVO" %><%--
  Created by IntelliJ IDEA.
  User: Huxx_j
  Date: 2018. 3. 27.
  Time: AM 9:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style type="text/css">
        table {
            border: 1px black solid;

        }
        td {
            border: 1px black solid;
        }
    </style>
</head>
<body>
<%
    MemberVO memberVO = (MemberVO)session.getAttribute("memberVO");

    if (memberVO == null) {
        memberVO = new MemberVO("","","","","","","","",new String[]{"0","","",""},"0","0");
    }
%>
<table>
<form action="regi_pro.jsp" method="post">
    <tr>
        <td>ID</td>
        <td><input type="text" name="id" value="<%=memberVO.getId()%>"></td>
    </tr>
    <tr>
        <td>PW</td>
        <td><input type="password" name="pw" value="<%=memberVO.getPw()%>"></td>
    </tr>
    <tr>
        <td>이름</td>
        <td><input type="text" name="name" value="<%=memberVO.getName()%>">
        </td>
    </tr>
    <tr>
        <td>우편번호</td>
        <td><input type="text" name="zip1" value="<%=memberVO.getZip1()%>" size="5"> - <input type="text" name="zip2" value="<%=memberVO.getZip2()%>" size="5"></td>
    </tr>
    <tr>
        <td>주소1</td>
        <td><input type="text" name="add1" value="<%=memberVO.getAdd1()%>"></td>
    </tr>
    <tr>
        <td>주소2</td>
        <td><input type="text" name="add2" value="<%=memberVO.getAdd2()%>"></td>
    </tr>
    <tr>
        <td>이메일</td>
        <td><input type="text" name="email" value="<%=memberVO.getEmail()%>"></td>
    </tr>
    <tr>
        <td>사용언어</td>
        <td><input type="checkbox" name="lang" value="0" <%=memberVO.getLang()[0].equals("0")?"checked":""%>> Java
            <input type="checkbox" name="lang" value="1" <%=memberVO.getLang()[1].equals("1")?"checked":""%>> C++
            <input type="checkbox" name="lang" value="2" <%=memberVO.getLang()[2].equals("2")?"checked":""%>> C#
            <input type="checkbox" name="lang" value="3" <%=memberVO.getLang()[3].equals("3")?"checked":""%>> C</td>
    </tr>
    <tr>
        <td>사용툴</td>
        <td><input type="radio" name="tool" value="0" <%=memberVO.getTool().equals("0")?"checked":""%>> Intellij
            <input type="radio" name="tool" value="1" <%=memberVO.getTool().equals("1")?"checked":""%>> Eclipse
            <input type="radio" name="tool" value="2" <%=memberVO.getTool().equals("2")?"checked":""%>> Xcode
            <input type="radio" name="tool" value="3" <%=memberVO.getTool().equals("3")?"checked":""%>> notepad</td>
    </tr>
    <tr>
        <td>프로젝트 경험</td>
        <td><select name="project">
            <option value="0" <%=memberVO.getProject().equals("0")?"selected":""%>>프로젝트 경험</option>
            <option value="1" <%=memberVO.getProject().equals("1")?"selected":""%>>1~2회</option>
            <option value="2" <%=memberVO.getProject().equals("2")?"selected":""%>>3~4회</option>
            <option value="3" <%=memberVO.getProject().equals("3")?"selected":""%>>5~6회</option>
            <option value="4" <%=memberVO.getProject().equals("4")?"selected":""%>>7회 이상</option>
        </select>
        </td>
    </tr>
    <tr>
        <td colspan="2"><input type="submit" value="등록"></td>
    </tr>

</form>
    </table>
</body>
</html>

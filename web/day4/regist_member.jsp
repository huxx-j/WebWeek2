<%@ page import="kr.co.bit.day4.MemberVO" %><%--
  Created by IntelliJ IDEA.
  User: Huxx_j
  Date: 2018. 3. 26.
  Time: AM 11:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>회원가입</title>
</head>
<body>
<%
    MemberVO memberVO = (MemberVO)session.getAttribute("memberVO");
    if (memberVO == null) {
        memberVO = new MemberVO("","","","","","","","",new String[]{"0","","",""},"0","0");
    }
%>
<form action="process_regist.jsp" method="get">

    <table>
        <tr>
            <td>아이디</td>
            <td><input type="text" name="id" value="<%=memberVO.getId()%>"></td>
            <td></td>
            <td></td>
        </tr>

        <tr>
            <td>패스워드</td>
            <td><input type="password" name="pw" value="<%=memberVO.getPw()%>"></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td>이름</td>
            <td><input type="text" name="name" value="<%=memberVO.getName()%>"></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td>우편번호</td>
            <td><input type="text" name="zip1" size="3" value="<%=memberVO.getZip1()%>">-<input type="text" name="zip2" size="3" value="<%=memberVO.getZip2()%>"></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td>주소1</td>
            <td><input type="text" name="add1" size="30" value="<%=memberVO.getAdd1()%>"></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td>주소2</td>
            <td><input type="text" name="add2" size="30" value="<%=memberVO.getAdd2()%>"></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td>이메일</td>
            <td><input type="text" name="email" value="<%=memberVO.getEmail()%>"></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td>사용언어</td>
            <td>
                <input type="checkbox" name="lang" value="0" <%=memberVO.getLang()[0].equals("0")?"checked":""%>> 자바
                <input type="checkbox" name="lang" value="1" <%=memberVO.getLang()[1].equals("1")?"checked":""%>> 파이썬
                <input type="checkbox" name="lang" value="2" <%=memberVO.getLang()[2].equals("2")?"checked":""%>> C++
                <input type="checkbox" name="lang" value="3" <%=memberVO.getLang()[3].equals("3")?"checked":""%>> C
            </td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td>사용툴</td>
            <td>
                <input type="radio" name="tool" value="0" <%=memberVO.getTool().equals("0")?"checked":""%>> Eclipse
                <input type="radio" name="tool" value="1" <%=memberVO.getTool().equals("1")?"checked":""%>> Visual Studio
                <input type="radio" name="tool" value="2" <%=memberVO.getTool().equals("2")?"checked":""%>> IntelliJ
                <input type="radio" name="tool" value="3" <%=memberVO.getTool().equals("3")?"checked":""%>> NotePad
            </td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td>프로젝트경험</td>
            <td><select name="project">
                <option value="0" <%=memberVO.getProject().equals("0")?"selected":""%>> 프로젝트 경험</option>
                <option value="1" <%=memberVO.getProject().equals("1")?"selected":""%>> 1~2회</option>
                <option value="2" <%=memberVO.getProject().equals("2")?"selected":""%>> 3~4회</option>
                <option value="3" <%=memberVO.getProject().equals("3")?"selected":""%>> 5~6회</option>
                <option value="4" <%=memberVO.getProject().equals("4")?"selected":""%>> 7회 이상</option>

            </select></td>
            <td></td>
            <td></td>
        </tr>

        <tr>
            <td colspan="4"><input type="submit" value="가입"></td>
        </tr>

    </table>
</form>

</body>
</html>

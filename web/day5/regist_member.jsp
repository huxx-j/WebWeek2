<%@ page import="kr.co.bit.day5.MemberVO" %><%--
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
    <style type="text/css">

        table {
            border: black solid 1px;
            collapse: collapse;

        }
        td {
            border: black solid 1px;
            collapse: collapse;
        }
    </style>
    <script type="text/javascript">
        function id_check() {
            //alert("Success")
            var checkId = document.getElementById("userid").value; //userid에 있는 value값을 가져옴
            window.open("id_check.jsp?id="+checkId,"","width=300px height=200px");
            return false; //false를 안해주면 form action 페이지로 넘어가버림
        }
        function check_empty() {
            var val = document.getElementById("pw").value;
            if (val=="") {
                alert("empty~");
            }
            return false;
        }

        function checkbox_check() {
            var eles = document.getElementsByClassName("langs");
            alert(eles.length);
            var count = 0;
            for (var i =0; i < eles.length; i++) {
                if (eles[i].checked) {
                    // alert((i+1) +"checked")
                    count++;
                }
            }
            alert("selected count is " + count);
            return false;
        }

        function select_check() {
            var val  = document.getElementById("project").value;
            if (val == "0") {
                alert("프로젝트 경험을 선택하세요")
            }
            return false;
        }

        function final_check() {
            var val = document.getElementById("isIdCheck").value;

                alert(val);

        return false;
        }

        function check_name() {
            var val = document.getElementById("name").value;
            if (val=="") {
                alert("empty~");
            }
            return false;
        }

        function check_email() {
            var val = document.getElementById("email").value;
            if (val=="") {
                alert("empty~");
            }
            return false;
        }

        function check_zip() {
            var val = document.getElementById("zip").value;
            window.open("zip_check.jsp?zip="+val,"","width=300px height=200px");

            return false;
        }

        function check_add1() {
            var val = document.getElementById("add1").value;
            if (val=="") {
                alert("empty~");
            }
            return false;
        }

        function check_add2() {
            var val = document.getElementById("add2").value;
            if (val=="") {
                alert("empty~");
            }
            return false;
        }
    </script>
</head>
<body>
<%
    MemberVO memberVO = (MemberVO)session.getAttribute("memberVO");
    if (memberVO == null) {
        memberVO = new MemberVO("","","","","","","",new String[]{"0","","",""},"0","0");
    }
%>
<form action="process_regist.jsp" method="get">

    <table>
        <tr>
            <td>아이디</td>
            <td><input type="text" name="id" id="userid" value="<%=memberVO.getId()%>" readonly="readonly" onclick="id_check()"></td>
            <td><button onclick="return id_check()">아이디 체크</button> </td>
            <td><input type="hidden" name="isIdCheck" value="false" id="isIdCheck">
            </td>
        </tr>

        <tr>
            <td>패스워드</td>
            <td><input type="password" name="pw" id="pw" value="<%=memberVO.getPw()%>"></td>
            <td><button onclick="return check_empty()">빈칸 체크</button> </td>
            <td></td>
        </tr>
        <tr>
            <td>이름</td>
            <td><input type="text" name="name" id="name" value="<%=memberVO.getName()%>"></td>
            <td><button onclick="return check_name()">이름 체크</button> </td>
            <td></td>
        </tr>
        <tr>
            <td>우편번호</td>
            <td><input type="text" name="zip" size="10" id="zip" value="<%=memberVO.getZip()%>"></td>
            <td><button onclick="return check_zip()">우편번호 체크</button> </td>
            <td></td>
        </tr>
        <tr>
            <td>주소1</td>
            <td><input type="text" name="add1" size="30" id="add1" value="<%=memberVO.getAdd1()%>"></td>
            <td><button onclick="return check_add1()">주소1 체크</button> </td>
            <td></td>
        </tr>
        <tr>
            <td>주소2</td>
            <td><input type="text" name="add2" size="30" id="add2" value="<%=memberVO.getAdd2()%>"></td>
            <td><button onclick="return check_add2()">주소2 체크</button> </td>
            <td></td>
        </tr>
        <tr>
            <td>이메일</td>
            <td><input type="text" name="email" id="email" value="<%=memberVO.getEmail()%>"></td>
            <td><button onclick="return check_email()">이메일 체크</button> </td>
            <td></td>
        </tr>
        <tr>
            <td>사용언어</td>
            <td>
                <input type="checkbox" name="lang" value="0" class="langs" <%=memberVO.getLang()[0].equals("0")?"checked":""%>> 자바
                <input type="checkbox" name="lang" value="1" class="langs" <%=memberVO.getLang()[1].equals("1")?"checked":""%>> 파이썬
                <input type="checkbox" name="lang" value="2" class="langs" <%=memberVO.getLang()[2].equals("2")?"checked":""%>> C++
                <input type="checkbox" name="lang" value="3" class="langs" <%=memberVO.getLang()[3].equals("3")?"checked":""%>> C
            </td>
            <td><button onclick="return checkbox_check()">체크박스 확인</button> </td>
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
            <td><select name="project" id="project">
                <option value="0" <%=memberVO.getProject().equals("0")?"selected":""%>> 프로젝트 경험</option>
                <option value="1" <%=memberVO.getProject().equals("1")?"selected":""%>> 1~2회</option>
                <option value="2" <%=memberVO.getProject().equals("2")?"selected":""%>> 3~4회</option>
                <option value="3" <%=memberVO.getProject().equals("3")?"selected":""%>> 5~6회</option>
                <option value="4" <%=memberVO.getProject().equals("4")?"selected":""%>> 7회 이상</option>

            </select></td>
            <td><button onclick="return select_check()">셀렉트 체크</button> </td>
            <td></td>
        </tr>

        <tr>
            <td colspan="4"><input type="submit" value="가입" onclick="return final_check()"></td>
        </tr>

    </table>
</form>

</body>
</html>

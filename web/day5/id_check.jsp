<%--
  Created by IntelliJ IDEA.
  User: Huxx_j
  Date: 2018. 3. 27.
  Time: AM 11:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ID Check</title>
    <script type="text/javascript">
        function work_close() {
            var userid = document.getElementById("id").value; //요 페이지의 id 참조
            opener.document.getElementById("userid").value = userid; //opener를 사용해 regist_member.jsp 전 페이지의 userid 참조하고 변경도 가능
            opener.document.getElementById("isIdCheck").value = true;
            self.close();
        }

        // function alert1(a) {
        //     if ("0".equals(a)) {
        //         alert("다른 아이디를 입력하세요")
        //     } else {
        //         alert("사용 가능한 아이디 입니다.")
        //     }
        // }
    </script>
</head>
<body>
<%
    String id = request.getParameter("id");
    String b = request.getParameter("ids");
%>
<form action="search_id.jsp" method="post">
    ID <input type="text" name="id" id="id" value="<%=id%>">
    <input type="submit" value="중복확인">
    <button onclick="work_close()">사용</button>

    <%
        if ("0".equals(b)) {
            out.print("사용할수 없는 아이디 입니다.");
        } else if ("1".equals(b)) {
            out.print("사용 가능한 아이디 입니다.");
        }
    %>
</form>
</body>
</html>

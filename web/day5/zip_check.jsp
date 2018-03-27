<%--
  Created by IntelliJ IDEA.
  User: Huxx_j
  Date: 2018. 3. 27.
  Time: PM 5:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript">
        function search() {
            var userzip = document.getElementById("zip").value;
            opener.document.getElementById("zip").value = userzip;
            self.close();
        }
    </script>
</head>
<body>
<%
    String zip = request.getParameter("zip");
%>
<form action="search_id.jsp" method="get">
    우편번호 <input type="text" name="zip" id="zip" value="<%=zip%>">
    <input type="submit" value="우편번호 조회">
</form>
<button onclick="search()">사용</button>
</body>
</html>

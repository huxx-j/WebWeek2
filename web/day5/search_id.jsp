<%--
  Created by IntelliJ IDEA.
  User: Huxx_j
  Date: 2018. 3. 27.
  Time: PM 1:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String id = request.getParameter("id");
    String ids;
    if ("admin".equals(id)){
        ids = "0";
    } else {
        ids = "1";
    }

    response.sendRedirect("id_check.jsp?ids="+ids+"&id="+id);

%>

</body>
</html>

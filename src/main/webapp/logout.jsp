<%--
  Created by IntelliJ IDEA.
  User: yeons
  Date: 2022-12-02
  Time: 오후 7:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>로그아웃</title>
</head>
<body>
<%
    session.invalidate();
    response.sendRedirect("login.jsp");
%>
</body>
</html>

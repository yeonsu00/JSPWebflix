<%--
  Created by IntelliJ IDEA.
  User: yeons
  Date: 2022-12-01
  Time: 오후 6:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="errorPage.jsp" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        String user_id = request.getParameter("id");
        String user_pw = request.getParameter("password");

        session.setAttribute("userID", user_id);
        session.setAttribute("userPW", user_pw);

        response.sendRedirect("main.jsp");
        response.sendRedirect("header.jsp");
    %>
</body>
</html>

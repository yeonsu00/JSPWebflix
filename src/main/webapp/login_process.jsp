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

        if (user_id.equals("admin") && user_pw.equals("1234")) {
            session.setAttribute("userID", user_id);
            session.setAttribute("userPW", user_pw);
//            System.out.println("<script>alert('" + user_id + "님 환영합니다!');</script>");
            response.sendRedirect("main.jsp");
        } else {
//            System.out.println("<script>alert('아이디와 비밀번호를 다시 입력해주세요');</script>");
        }
    %>
</body>
</html>

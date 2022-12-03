<%--
  Created by IntelliJ IDEA.
  User: yeons
  Date: 2022-12-01
  Time: 오후 11:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>
    <title>헤더</title>
    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="assets/favicon.ico"/>
    <!-- Font Awesome icons (free version)-->
    <script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js" crossorigin="anonymous"></script>
    <!-- Google fonts-->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css"/>
    <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css"/>
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="./market/css/styles.css" rel="stylesheet"/>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark" id="mainNav">
    <div class="container">
        <a class="navbar-brand" href="main.jsp">Webflix</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive"
                aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            Menu
            <i class="fas fa-bars ms-1"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav text-uppercase ms-auto py-4 py-lg-0">
                <li class="nav-item"><a class="nav-link" href="movies.jsp">MOVIE</a></li>
                <li class="nav-item"><a class="nav-link" href="store.jsp">STORE</a></li>
                <li class="nav-item"><a class="nav-link" href="membership.jsp">MEMBERSHIP</a></li>
                <li class="nav-item"><a class="nav-link" href="myPage.jsp">MYPAGE</a></li>
                <li class="nav-item"><a class="nav-link" href="logout.jsp">LOGOUT</a></li>
                <%
                    String id = (String)session.getAttribute("userID");
                    System.out.println(id);
                    if (id.equals("admin")) {
                %>
                <li class="nav-item"><a class="nav-link" href="addMovie.jsp">영화추가</a></li>
                <%
                    }
                %>
            </ul>
        </div>
    </div>
</nav>
</body>
</html>

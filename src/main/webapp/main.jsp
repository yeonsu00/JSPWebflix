<%--
  Created by IntelliJ IDEA.
  User: yeons
  Date: 2022-12-01
  Time: 오후 6:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>
    <title>메인 페이지</title>
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
<body class="bg-dark">
<nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
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
                <li class="nav-item"><a class="nav-link" href="addMovie.jsp">영화추가</a></li>
            </ul>
        </div>
    </div>
</nav>

<!--swiper 들어갈 부분 https://numerok.tistory.com/140 -->
<header class="masthead">
    <div class="container">
        <div class="masthead-subheading">Welcome To Our Studio!</div>
        <div class="masthead-heading text-uppercase">It's Nice To Meet You</div>
        <a class="btn btn-primary btn-xl text-uppercase" href="#services">Tell Me More</a>
    </div>
</header>

<%--<section class="page-section bg-dark" id="movie">--%>
<%--    <jsp:include page="movies.jsp"/>--%>
<%--</section>--%>
<%--<section class="page-section bg-dark" id="store">--%>
<%--    <jsp:include page="store.jsp"/>--%>
<%--</section>--%>
<%--<section class="page-section" id="membership">--%>
<%--    <jsp:include page="membership.jsp"/>--%>
<%--</section>--%>
<%--<%@ include file="footer.jsp" %>--%>
</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: yeons
  Date: 2022-12-01
  Time: 오전 10:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page errorPage="errorPage.jsp" %>
<html>
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>
    <title>로그인 페이지</title>
    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="assets/favicon.ico"/>
    <!-- Font Awesome icons (free version)-->
    <script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js" crossorigin="anonymous"></script>
    <!-- Google fonts-->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css"/>
    <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css"/>
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="market/css/styles.css" rel="stylesheet"/>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
            crossorigin="anonymous"></script>

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
            integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js"
            integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V"
            crossorigin="anonymous"></script>
</head>

<body id="page-top">
<!-- Masthead-->
<header class="masthead">
    <div class="container">
<%--        <div class="masthead-subheading">Welcome To WEBFLIX</div>--%>
        <div class="masthead-heading text-uppercase">Welcome To WEBFLIX</div>

        <div class="d-flex justify-content-center">
            <div class="card bg-dark" style="width: 25rem;">
                <div class="card-body">
                    <form name="loginForm" action="main.jsp" method="post">
                        <div class="form-floating">
                            <input type="text" class="form-control" name="id" id="id"/>
                            <label for="id" class="text-dark">아이디</label>
                        </div>
                        <br>
                        <div class="form-floating">
                            <input type="password" class="form-control" name="password" placeholder="Password" id="password"/>
                            <label for="password" class="text-dark">비밀번호</label>
                        </div>
                        <br>
                        <br>
                        <div class="d-grid gap-2 col-6 mx-auto">
                            <input type="submit" value="로그인" class="btn btn-outline-warning btn-xl text-uppercase"/>
                        </div>

                    </form>
                </div>
            </div>
        </div>
        <%--        <a class="btn btn-primary btn-xl text-uppercase" href="#services">Tell Me More</a>--%>
    </div>
</header>
</body>
</html>

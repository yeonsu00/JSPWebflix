<%@ page import="dao.MovieRepository" %>
<%@ page import="dto.Movie" %><%--
  Created by IntelliJ IDEA.
  User: yeons
  Date: 2022-12-02
  Time: 오후 5:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>
    <title>영화 페이지</title>
    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="assets/favicon.ico"/>
    <!-- Font Awesome icons (free version)-->
    <script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js" crossorigin="anonymous"></script>
    <!-- Google fonts-->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css"/>
    <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css"/>
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="market/css/styles.css" rel="stylesheet"/>
</head>
<body class="bg-dark">
<%@ include file="header.jsp" %>
<%
    String id = request.getParameter("id");
    MovieRepository dao = MovieRepository.getInstance();
    Movie movie = dao.getMovieById(id);
%>
<div class="container text-light">
    <div class="row justify-content-center">
        <div class="col-lg-8">
            <div class="container">
                <div class="row">
                    <div class="col">
                        <h2 class="text-uppercase"><%=movie.getName()%>
                        </h2>
                        <p class="item-intro text-muted">Lorem ipsum dolor sit amet consectetur.</p>
                        <img class="img-fluid d-block mx-auto" src="market/images/<%=movie.getFileName()%>" alt="..."/>
                    </div>
                    <div class="col">
                        <p>Use this area to describe your project. Lorem ipsum dolor sit amet, consectetur
                            adipisicing elit. Est blanditiis dolorem culpa incidunt minus dignissimos deserunt
                            repellat aperiam quasi sunt officia expedita beatae cupiditate, maiores repudiandae,
                            nostrum, reiciendis facere nemo!</p>
                        <ul class="list-inline">
                            <li>
                                <strong>Client:</strong>
                                Threads
                            </li>
                            <li>
                                <strong>Category:</strong>
                                Illustration
                            </li>
                        </ul>
                        <button class="btn btn-primary btn-xl text-uppercase" type="button">
                            영화 보기
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>

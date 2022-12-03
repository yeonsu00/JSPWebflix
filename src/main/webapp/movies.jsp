<%@ page import="dao.MovieRepository" %>
<%@ page import="dto.Movie" %>
<%@ page import="java.util.ArrayList" %>
<%@ page errorPage="errorPage.jsp" %>
<%--
  Created by IntelliJ IDEA.
  User: yeons
  Date: 2022-12-02
  Time: 오전 1:05
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

<section class="page-section bg-dark" id="portfolio">
    <div class="container">
        <div class="text-center">
            <h2 class="section-heading text-uppercase text-light">MOVIE</h2>
            <h3 class="section-subheading text-muted">원하는 영화를 플레이해보세요</h3>
        </div>
        <div class="row">
            <%
                MovieRepository dao = MovieRepository.getInstance();
                ArrayList<Movie> listOfMovies = dao.getAllMovies();
            %>
            <%
                for (int i = 0; i < listOfMovies.size(); i++) {
                    Movie movie = listOfMovies.get(i);

            %>
            <div class="col-lg-3 col-sm-6 mb-4">
                <!-- Portfolio item 1-->
                <div class="portfolio-item">
                    <a class="portfolio-link" data-bs-toggle="modal" href="./movie.jsp?id=<%=listOfMovies.get(i).getMovieId() %>">
                        <div class="portfolio-hover">
                            <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                        </div>
                        <div class="d-flex justify-content-center" style="background-color: rgba(108,105,105,0.69)">
                            <img class="img-fluid" src="market/images/<%=listOfMovies.get(i).getFileName()%>" alt="..."/>
                        </div>
                    </a>
                    <div class="portfolio-caption">
                        <div class="portfolio-caption-heading"><%=listOfMovies.get(i).getName() %>
                        </div>
                        <div class="portfolio-caption-subheading text-muted"><%=listOfMovies.get(i).getGenre() %></div>
                    </div>
                </div>
            </div>
            <%
                }
            %>
        </div>
    </div>
</section>
</body>
</html>

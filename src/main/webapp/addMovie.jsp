<%--
  Created by IntelliJ IDEA.
  User: yeons
  Date: 2022-12-02
  Time: 오후 7:19
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
    <title>관리자 페이지</title>
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
<div class="d-flex justify-content-center">
    <div class="card col-lg-5 col-sm-6 mb-4 text-light" style="background-color: #2c3034">
        <div class="card-body">
            <form name="addMovieForm" method="post" enctype="multipart/form-data" action="insertData_process.jsp">
                <div class="mb-3">
                    <label for="name" class="form-label" name="name">제목</label>
                    <input type="text" class="form-control" id="name"/>
                </div>
                <div class="mb-3">
                    <label for="genre" class="form-label" name="genre">장르</label>
                    <input type="text" class="form-control" id="genre"/>
                </div>
                <div class="mb-3">
                    <label for="description" class="form-label" name="description">영화설명</label>
                    <input type="text" class="form-control" id="description"/>
                </div>
                <div class="mb-3">
                    <label for="director" class="form-label" name="director">감독</label>
                    <input type="text" class="form-control" id="director"/>
                </div>
                <div class="mb-3">
                    <label for="grade" class="form-label" name="grade">등급</label>
                    <input type="text" class="form-control" id="grade"/>
                </div>
                <div class="mb-3">
                    <label for="runningTime" class="form-label" name="runningTime">러닝타임</label>
                    <input type="text" class="form-control" id="runningTime"/>
                </div>
                <div class="mb-3">
                    <label for="fileName" class="form-label" name="fileName">표지</label>
                    <input type="file" class="form-control" id="fileName"/>
                </div>
                <button type="submit" class="btn btn-primary">영화 추가하기</button>
            </form>
        </div>
    </div>
</div>
</body>
</html>

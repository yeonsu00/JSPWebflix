<%@ page import="dao.StoreRepository" %>
<%@ page import="dto.Store" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: yeons
  Date: 2022-12-02
  Time: 오전 1:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <head>
        <meta charset="utf-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
        <meta name="description" content=""/>
        <meta name="author" content=""/>
        <title>스토어 페이지</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico"/>
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css"/>
        <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet"
              type="text/css"/>
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="market/css/styles.css" rel="stylesheet"/>
        <script type="text/javascript">
            function addToCart() {
                if (confirm("장바구니에 추가하시겠습니까?")) {
                    document.addForm.submit();
                } else {
                    document.addForm.reset();
                }
            }
        </script>
    </head>
<body id="page-top" class="bg-dark">
<%@ include file="header.jsp" %>
<section class="page-section" id="portfolio">
    <div class="container">
        <div class="text-center text-light">
            <h2 class="section-heading text-uppercase">STORE</h2>
            <h3 class="section-subheading text-muted">팝콘과 음료를 배달시켜 먹어요</h3>
        </div>
        <div class="row">
            <%
                StoreRepository dao = StoreRepository.getInstance();
                ArrayList<Store> listOfStore = dao.getAllStore();
            %>
            <%
                for (int i = 0; i < listOfStore.size(); i++) {
                    Store store = listOfStore.get(i);

            %>
            <div class="col-lg-3 col-sm-6 mb-4">
                <!-- Portfolio item 1-->
                <div class="portfolio-item">
                    <a class="portfolio-link" data-bs-toggle="modal" onclick="addToCart()" href="./movie.jsp?id=<%=listOfStore.get(i).getId() %>">
                        <div class="portfolio-hover">
                            <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                        </div>
                        <div class="d-flex justify-content-center">
                            <img class="img-fluid" src="market/images/<%=listOfStore.get(i).getFileName()%>" alt="..."/>
                        </div>
                    </a>
                    <div class="portfolio-caption">
                        <div class="portfolio-caption-heading"><%=listOfStore.get(i).getName() %>
                        </div>
                        <div class="portfolio-caption-subheading text-muted"><%=listOfStore.get(i).getPrice() %>원</div>
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

<%--
  Created by IntelliJ IDEA.
  User: yeons
  Date: 2022-12-03
  Time: 오후 2:56
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
</head>
<body class="bg-dark">
<%@ include file="header.jsp" %>
<div class="container">
    <div class="text-center" style="margin-bottom: 80px">
        <h2 class="section-heading text-uppercase text-light">배달 및 결제정보를 입력해주세요</h2>
    </div>
    <div class="row text-light d-flex justify-content-center">
        <form name="cartForm" action="main.jsp" method="post">
            <div class="card col-lg-6 col-sm-6 mb-4" style="background-color: #2c3034">
                <div class="card-body">
                    <h3>배달 정보</h3>
                    <div class="mb-3">
                        <label for="address" class="form-label">주소</label>
                        <input type="text" class="form-control" id="address">
                    </div>
                    <div class="mb-3">
                        <label for="request" class="form-label">요청사항</label>
                        <input type="text" class="form-control" id="request">
                    </div>

                </div>
            </div>

            <div class="card col-lg-6 col-sm-6 mb-4" style="background-color: #2c3034">
                <div class="card-body">
                    <h3>결제 정보</h3>
                    <div class="mb-3">
                        <label for="cardNumber" class="form-label">카드번호</label>
                        <input type="text" class="form-control" id="cardNumber" placeholder="0000 0000 0000 0000">
                    </div>
                    <div class="mb-3">
                        <label for="expirationDate" class="form-label">유효기간</label>
                        <input type="text" class="form-control" id="expirationDate" placeholder="MM/YY">
                    </div>
                    <div class="mb-3">
                        <label for="password" class="form-label">비밀번호</label>
                        <input type="password" class="form-control" id="password" placeholder="비밀번호 앞 2자리">
                    </div>
                    <div class="mb-3">
                        <label for="birth" class="form-label">생년월일</label>
                        <input type="text" class="form-control" id="birth" placeholder="YYMMDD(6자리)">
                    </div>
                    <hr>
                    <div class="mb-3 form-check">
                        <input type="checkbox" class="form-check-input" id="exampleCheck1">
                        <label class="form-check-label" for="exampleCheck1">개인정보 수집 및 이용에 동의합니다.</label>
                    </div>
                    <button type="submit" class="btn btn-primary">결제하기</button>

                </div>
            </div>
        </form>
    </div>
</div>
</body>
</html>

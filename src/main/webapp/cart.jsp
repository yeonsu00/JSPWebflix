<%@ page import="dto.Store" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: yeons
  Date: 2022-12-03
  Time: 오후 2:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>
    <title>장바구니 페이지</title>
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
    <%
        String cartId = session.getId();
    %>
</head>
<body class="bg-dark">
<%@ include file="header.jsp" %>
<div class="container  text-light">
    <div class="text-center" style="margin-bottom: 80px">
        <h2 class="section-heading text-uppercase text-light">장바구니</h2>
    </div>
    <div class="d-flex justify-content-center">
    <div class="card col-lg-4 col-sm-6 mb-4" style="background-color: white">
        <div class="card-body">
            <div class="row  text-light">
                <table width="100%">
                    <%--            <tr>--%>
                    <%--                <td align="left">--%>
                    <%--                <a href="./deleteCart.jsp?cartId=<%=cartId %>" class="btn btn-danger">삭제하기</a>--%>
                    <%--            </td>--%>
                    <td align="right">
                        <a href="./shippingInfo.jsp?cartId=<%=cartId %>" class="btn btn-success">주문하기</a>
                    </td>
                    </tr>
                </table>
            </div>
            <div style="padding-top: 50px">
                <table class="table table-hover">
                    <tr>
                        <th>상품</th>
                        <th>가격</th>
                        <th>수량</th>
                        <th>소계</th>
                        <th>비고</th>
                    </tr>
                    <%
                        int sum = 0;
                        ArrayList<Store> cartlistStore = (ArrayList<Store>) session.getAttribute("cartlistStore");
                        if (cartlistStore == null) {
                            cartlistStore = new ArrayList<Store>();
                        }
                        for (int i = 0; i < cartlistStore.size(); i++) {
                            Store store = cartlistStore.get(i);
                            int total = store.getPrice() * store.getQuantity();
                            sum = sum + total;
                    %>
                    <tr>
                        <td>
                            <%=store.getId() %> - <%=store.getName() %>
                        </td>
                        <td><%=store.getPrice() %>
                        </td>
                        <td><%=store.getQuantity() %>
                        </td>
                        <td><%=total %>
                        </td>
                        <td><a href="./removeStoreCart.jsp?id=<%=store.getId() %>" class="badge badge-danger text-dark">삭제</a>
                        </td>
                    </tr>
                    <%
                        }
                    %>
                    <tr>
                        <th></th>
                        <th></th>
                        <th>총액</th>
                        <th><%=sum %>
                        </th>
                        <th></th>
                    </tr>
                </table>
                <a href="./store.jsp" class="btn btn-secondary">이전으로 돌아가기</a>
            </div>
        </div>
    </div>
    </div>
</div>
</body>
</html>

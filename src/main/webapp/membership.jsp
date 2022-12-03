<%@ page import="dao.MembershipRepository" %>
<%@ page import="dto.Membership" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: yeons
  Date: 2022-12-02
  Time: 오전 1:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>
    <title>멤버십 페이지</title>
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
            if (confirm("멤버십을 구매하시겠습니까?")) {
                document.addForm.submit();
            } else {
                document.addForm.reset();
            }
        }
    </script>
</head>
<body class="bg-dark">
<%@ include file="header.jsp" %>
    <div class="container">
        <div class="text-center" style="margin-bottom: 80px">
            <h2 class="section-heading text-uppercase text-light">MEMBERSHIP</h2>
        </div>
        <%
            MembershipRepository dao = MembershipRepository.getInstance();
            ArrayList<Membership> listOfMemberships = dao.getAllMemberships();
        %>
        <div class="row text-center">
            <%
                for (int i = 0; i < listOfMemberships.size(); i++) {
                    Membership membership = listOfMemberships.get(i);

            %>
            <div class="col-md-4">
                        <span class="fa-stack fa-4x">
                            <i class="fas fa-circle fa-stack-2x text-primary"></i>
                            <i class="fas fa-shopping-cart fa-stack-1x fa-inverse"></i>
                        </span>
                <h4 class="my-3 text-light"><%=membership.getMembershipName()%></h4>
                <p class="text-muted"><%=membership.getDescription()%><br>월간 멤버십 : 월 <%=membership.getMonthPrice()%>원<br></p>
                <br>
                <form name="addForm" action="./addCart.jsp?id=<%=membership.getMembershipId() %>" method="post">
                    <a class="btn btn-primary btn-xl text-uppercase" onclick="addToCart()" href="./payMembership.jsp?id=<%=membership.getMembershipId()%>"><%=membership.getMembershipName()%> 구매하기</a>
                </form>
            </div>
            <%
                }
            %>
        </div>

    </div>
</body>
</html>

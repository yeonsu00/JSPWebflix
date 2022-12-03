<%@ page import="dao.StoreRepository" %>
<%@ page import="dto.Store" %>
<%@ page import="java.util.ArrayList" %>
<%@ page errorPage="errorPage.jsp" %>
<%--
  Created by IntelliJ IDEA.
  User: yeons
  Date: 2022-12-03
  Time: 오후 2:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String id = request.getParameter("id");
    if (id == null || id.trim().equals("")) {
        response.sendRedirect("store.jsp");
        return;
    }

    StoreRepository dao = StoreRepository.getInstance();


    ArrayList<Store> cartList = (ArrayList<Store>) session.getAttribute("cartlistStore");
    Store goodsQnt = new Store();
    for (int i = 0; i < cartList.size(); i++) {
        goodsQnt = cartList.get(i);
        if (goodsQnt.getId().equals(id)) {
            cartList.remove(goodsQnt);
        }
    }

    response.sendRedirect("cart.jsp");
%>
</body>
</html>

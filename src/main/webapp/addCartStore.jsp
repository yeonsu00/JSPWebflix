<%@ page import="dao.StoreRepository" %>
<%@ page import="dto.Store" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Enumeration"%>
<%--
  Created by IntelliJ IDEA.
  User: yeons
  Date: 2022-12-03
  Time: 오후 2:38
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

    Store store = dao.getStoreById(id);
    if (store == null) {
        response.sendRedirect("exceptionNoId.jsp");
    }

    ArrayList<Store> goodsList = dao.getAllStore();
    Store goods = new Store();
    for (int i = 0; i < goodsList.size(); i++) {
        goods = goodsList.get(i);
        if (goods.getId().equals(id)) {
            break;
        }
    }

    ArrayList<Store> list = (ArrayList<Store>) session.getAttribute("cartlistStore");
    if (list == null) {
        list = new ArrayList<Store>();
        session.setAttribute("cartlistStore", list);
    }

    int cnt = 0;
    Store goodsQnt = new Store();

    for (int i = 0; i < list.size(); i++) {
        goodsQnt = list.get(i);
        if (goodsQnt.getId().equals(id)) {
            cnt++;
        }
    }

    if (cnt == 0) {
        list.add(goods);
    }

    response.sendRedirect("store.jsp");
%>
</body>
</html>

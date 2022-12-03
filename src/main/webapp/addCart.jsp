<%@ page import="dao.MembershipRepository" %>
<%@ page import="dto.Membership" %>
<%@ page import="java.util.ArrayList" %>
<%@ page errorPage="errorPage.jsp" %>
<%--
  Created by IntelliJ IDEA.
  User: yeons
  Date: 2022-12-02
  Time: 오후 9:03
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
            response.sendRedirect("membership.jsp");
            return;
        }

        MembershipRepository dao = MembershipRepository.getInstance();

        Membership membership = dao.getMembershipById(id);
        if (membership == null) {
            response.sendRedirect("exceptionNoBookId.jsp");
        }

        ArrayList<Membership> goodsList = dao.getAllMemberships();
        Membership goods = new Membership();
        for (int i = 0; i < goodsList.size(); i++) {
            goods = goodsList.get(i);
            if (goods.getMembershipId().equals(id)) {
                break;
            }
        }

        ArrayList<Membership> list = (ArrayList<Membership>) session.getAttribute("cartlist");
        if (list == null) {
            list = new ArrayList<Membership>();
            session.setAttribute("cartlist", list);
        }

        int cnt = 0;
        Membership goodsQnt = new Membership();

        for (int i = 0; i < list.size(); i++) {
            goodsQnt = list.get(i);
            if (goodsQnt.getMembershipId().equals(id)) {
                cnt++;
            }
        }

        if (cnt == 0) {
            list.add(goods);
        }

        response.sendRedirect("membership.jsp");
    %>
</body>
</html>

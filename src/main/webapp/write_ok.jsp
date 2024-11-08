<%--
  Created by IntelliJ IDEA.
  User: hyoin
  Date: 11/8/24
  Time: 5:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String title = request.getParameter("title");
    String author = request.getParameter("author");
    String genre = request.getParameter("genre");
    String price = request.getParameter("price");
    String quantity = request.getParameter("quantity");
    String stock = request.getParameter("stock");
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="container mt-5">
    <h3>추가된 책 세부사항</h3>
    <p>Title: <%= title %></p>
    <p>Author: <%= author %></p>
    <p>Genre: <%= genre %></p>
    <p>Price: $<%= price %></p>
    <p>Quantity: <%= quantity %></p>
    <p>Stock Status: <%= stock %></p>

    <a href="list.jsp">Go to the Book List</a>
</div>
</body>
</html>


<%--
  Created by IntelliJ IDEA.
  User: hyoin
  Date: 11/8/24
  Time: 6:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>View Page</title>

    <%--  bootstrap  --%>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">

    <%--  커스텀 css 파일  --%>
    <link rel="stylesheet" href="./css/style.css">

</head>
<body>

<div class="list-cont">
    <!-- header -->
    <%@ include file="./inc/header.jsp" %>

    <%--  content  --%>
    <div class="container mt-5 mb-5">
        <%-- content header --%>
        <div class="py-4">
            <i class="fs-2 me-1 bi bi-journal-bookmark-fill"></i>
            <span class="fs-2 fw-bold">Book Info</span>
        </div>

        <%-- Book information --%>
        <div class="mb-4">
            <label for="title" class="fw-bold mb-1">Title</label>
            <div class="view-text p-3" id="title">The Great Gatsby</div>
        </div>

        <div class="mb-4">
            <label for="author" class="fw-bold mb-1">Author</label>
            <div class="view-text p-3" id="author">F. Scott Fitzgerald</div>
        </div>

        <div class="mb-4">
            <label for="genre" class="fw-bold mb-1">Genre</label>
            <div class="view-text p-3" id="genre">Classic</div>
        </div>

        <div class="mb-4">
            <label for="price" class="fw-bold mb-1">Price</label>
            <div class="view-text p-3" id="price">$10.99</div>
        </div>

        <div class="mb-4">
            <label for="quantity" class="fw-bold mb-1">Quantity</label>
            <div class="view-text p-3" id="quantity">50</div>
        </div>

        <div class="mb-4">
            <label for="stock" class="fw-bold mb-1">Stock Status</label>
            <div class="view-text p-3" id="stock">In Stock</div>
        </div>

        <div class="text-end mt-5">
            <a href="list.jsp" class="btn btn-primary" style="width: 150px">Back to List</a>
        </div>
    </div>

    <!-- Include footer -->
    <%@ include file="./inc/footer.jsp" %>
</div>

</body>
</html>

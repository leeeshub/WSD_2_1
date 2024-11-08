<%--
  Created by IntelliJ IDEA.
  User: hyoin
  Date: 11/8/24
  Time: 1:17 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <title>Book List</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">

    <%--  커스텀 css 파일  --%>
    <link rel="stylesheet" href="./css/style.css">

    <script>
        function delete_item(id) {
            if (confirm("도서를 삭제하시겠습니까?")) {
                window.location.href = "delete_ok.jsp?id=" + id; // 삭제 페이지로 이동
            } else {
                alert("도서 삭제가 취소되었습니다.");
            }
        }
    </script>
</head>
<body>

<div class="list-cont">
    <!-- header -->
    <%@ include file="./inc/header.jsp" %>

    <div id="main" class="container">
        <!-- navbar -->
        <nav class="navbar navbar-expand-md navbar-light rounded m-2">
            <h3>Book List</h3>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample09"
                    aria-controls="navbarsExample09" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse justify-content-end" id="navbarsExample09">
                <select class="custom-select d-block rounded-pill me-2 p-2 search-opt" id="value" required="">
                    <option value="">Search by ...</option>
                    <option>Title</option>
                    <option>Author</option>
                    <option>Genre</option>
                </select>

                <form class="form-inline my-2 my-md-0">
                    <input class="form-control search-input" type="text" aria-label="Search">
                </form>
                <button class="btn btn-primary me-1 search-btn" type="submit">Search</button>

                <a class="btn btn-primary rounded-pill" href="write.jsp" role="button">Add</a>
            </div>
        </nav>

        <!-- book list -->
        <div class="table-responsive small m-1 rounded" id="list">
            <table class="table table-sm">
                <thead>
                <tr class="table-primary">
                    <th scope="col" class="text-center">#</th>
                    <th scope="col">Title</th>
                    <th scope="col">Author</th>
                    <th scope="col">Genre</th>
                    <th scope="col">Price</th>
                    <th scope="col">Stock</th>
                    <th scope="col">Menu</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td class="text-center">1</td>
                    <td><a href="view.jsp" class="nav-link text-body">The Great Gatsby</a></td>
                    <td>F. Scott Fitzgerald</td>
                    <td>Classic</td>
                    <td>$10.99</td>
                    <td>In Stock</td>
                    <td class="d-flex align-items-center mt-1">
                        <a href="edit.jsp" class="text-dark">
                            <i class="bi bi-pencil-square me-2 fs-6"></i>
                        </a>
                        <span><i onclick="delete_item(1)" class="bi bi-trash fs-6 cursor-pointer"></i></span>
                    </td>
                </tr>
                <tr>
                    <td class="text-center">2</td>
                    <td><a href="view.jsp" class="nav-link text-body">Harry Potter and the Philosopher's Stone</a></td>
                    <td>J.K. Rowling</td>
                    <td>Fantasy</td>
                    <td>$15.99</td>
                    <td>Low Stock</td>
                    <td class="d-flex align-items-center mt-1">
                        <a href="edit.jsp" class="text-dark">
                            <i class="bi bi-pencil-square me-2 fs-6"></i>
                        </a>
                        <span><i onclick="delete_item(2)" class="bi bi-trash fs-6 cursor-pointer"></i></span>
                    </td>
                </tr>
                <tr>
                    <td class="text-center">3</td>
                    <td><a href="view.jsp" class="nav-link text-body">To Kill a Mockingbird</a></td>
                    <td>Harper Lee</td>
                    <td>Classic</td>
                    <td>$12.50</td>
                    <td>In Stock</td>
                    <td class="d-flex align-items-center mt-1">
                        <a href="edit.jsp" class="text-dark">
                            <i class="bi bi-pencil-square me-2 fs-6"></i>
                        </a>
                        <span><i onclick="delete_item(3)" class="bi bi-trash fs-6 cursor-pointer"></i></span>
                    </td>
                </tr>
                <tr>
                    <td class="text-center">4</td>
                    <td><a href="view.jsp" class="nav-link text-body">The Silent Patient</a></td>
                    <td>Alex Michaelides</td>
                    <td>Thriller</td>
                    <td>$18.99</td>
                    <td>Out of Stock</td>
                    <td class="d-flex align-items-center mt-1">
                        <a href="edit.jsp" class="text-dark">
                            <i class="bi bi-pencil-square me-2 fs-6"></i>
                        </a>
                        <span><i onclick="delete_item(4)" class="bi bi-trash fs-6 cursor-pointer"></i></span>
                    </td>
                </tr>
                <tr>
                    <td class="text-center">5</td>
                    <td><a href="view.jsp" class="nav-link text-body">Dune</a></td>
                    <td>Frank Herbert</td>
                    <td>Science Fiction</td>
                    <td>$14.99</td>
                    <td>In Stock</td>
                    <td class="d-flex align-items-center mt-1">
                        <a href="edit.jsp" class="text-dark">
                            <i class="bi bi-pencil-square me-2 fs-6"></i>
                        </a>
                        <span><i onclick="delete_item(5)" class="bi bi-trash fs-6 cursor-pointer"></i></span>
                    </td>
                </tr>
                <tr>
                    <td class="text-center">6</td>
                    <td><a href="view.jsp" class="nav-link text-body">Pride and Prejudice</a></td>
                    <td>Jane Austen</td>
                    <td>Romance</td>
                    <td>$11.99</td>
                    <td>In Stock</td>
                    <td class="d-flex align-items-center mt-1">
                        <a href="edit.jsp" class="text-dark">
                            <i class="bi bi-pencil-square me-2 fs-6"></i>
                        </a>
                        <span><i onclick="delete_item(6)" class="bi bi-trash fs-6 cursor-pointer"></i></span>
                    </td>
                </tr>
                <tr>
                    <td class="text-center">7</td>
                    <td><a href="view.jsp" class="nav-link text-body">The Thursday Murder Club</a></td>
                    <td>Richard Osman</td>
                    <td>Mystery</td>
                    <td>$16.99</td>
                    <td>Low Stock</td>
                    <td class="d-flex align-items-center mt-1">
                        <a href="edit.jsp" class="text-dark">
                            <i class="bi bi-pencil-square me-2 fs-6"></i>
                        </a>
                        <span><i onclick="delete_item(7)" class="bi bi-trash fs-6 cursor-pointer"></i></span>
                    </td>
                </tr>
                <tr>
                    <td class="text-center">8</td>
                    <td><a href="view.jsp" class="nav-link text-body">Atomic Habits</a></td>
                    <td>James Clear</td>
                    <td>Self Development</td>
                    <td>$19.99</td>
                    <td>In Stock</td>
                    <td class="d-flex align-items-center mt-1">
                        <a href="edit.jsp" class="text-dark">
                            <i class="bi bi-pencil-square me-2 fs-6"></i>
                        </a>
                        <span><i onclick="delete_item(8)" class="bi bi-trash fs-6 cursor-pointer"></i></span>
                    </td>
                </tr>
                </tbody>
            </table>
        </div>

    </div>

    <!-- Include footer -->
    <%@ include file="./inc/footer.jsp" %>

</div>
</body>
</html>
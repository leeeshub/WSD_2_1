<%--
  Created by IntelliJ IDEA.
  User: hyoin
  Date: 11/8/24
  Time: 3:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Book</title>

    <%--  bootstrap  --%>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">

    <%--  커스텀 css 파일  --%>
    <link rel="stylesheet" href="./css/style.css">

    <%--  form validation 체크  --%>
    <script>
        function add(event) {
            event.preventDefault();

            let isValid = true;
            const requiredFields = ["title", "author", "genre", "price", "quantity", "stock"];

            // 1. required field check
            requiredFields.forEach((fieldId) => {
                const field = document.getElementById(fieldId);
                const value = field.value.trim();

                if (!value) {
                    addError(field, "This field is required.");
                    removeValid(field);
                    isValid = false;
                } else {
                    field.classList.add("valid-highlight");
                    removeError(field);
                }
            });

            // 2. quantity and stock
            const quantity = document.getElementById("quantity").value.trim();
            const stockStatus = document.getElementById("stock").value.trim();
            removeValid(document.getElementById("quantity"));

            if (quantity === "" || quantity < 0) {
                addError(document.getElementById("quantity"), "Quantity must be between 0 and 100.");
                isValid = false;
            } else if (stockStatus === "In Stock" && (quantity < 30 || quantity > 100)) {
                addError(document.getElementById("quantity"), "For 'In Stock', quantity must be between 30 and 100.");
                isValid = false;
            } else if (stockStatus === "Low Stock" && (quantity < 1 || quantity > 29)) {
                addError(document.getElementById("quantity"), "For 'Low Stock', quantity must be between 1 and 29.");
                isValid = false;
            } else if (stockStatus === "Out of Stock" && quantity !== "0") {
                addError(document.getElementById("quantity"), "For 'Out of Stock', quantity must be 0.");
                isValid = false;
            } else { // 검사 성공! 유효한 범위의 값 입력된 경우
                document.getElementById("quantity").classList.add("valid-highlight");
            }

            // form 제출
            if (isValid) {
                alert("도서가 추가 되었습니다!");
                document.getElementById("addForm").submit();
            } else {
                return false;
            }

        }

        // 에러 메세지 추가하는 함수
        function addError(element, message) {
            element.classList.add("invalid-highlight");
            const errorMessage = document.createElement("div");
            errorMessage.classList.add("invalid-msg");
            errorMessage.innerText = message;

            // 에러 메세지 중복으로 띄우지 않도록.
            if (!element.parentNode.querySelector(".invalid-msg")) {
                element.parentNode.appendChild(errorMessage);
            }
        }

        // 에러 메세지 제거하는 함수
        function removeError(element) {
            element.classList.remove("invalid-highlight");
            const errorMessage = element.parentNode.querySelector(".invalid-msg");

            if (errorMessage) {
                errorMessage.remove();
            }
        }

        // valid 제거
        function removeValid(element) {
            element.classList.remove("valid-highlight");
        }
    </script>
</head>
<body>

<div class="list-cont">
    <!-- header -->
    <%@ include file="./inc/header.jsp" %>

    <div id="cont" class="container">
        <div class="py-4 m-5 text-center">
            <i class="fs-1 me-1 bi bi-patch-plus"></i>
            <span class="fs-1 fw-bold">Add New Book</span>
        </div>

        <form id="addForm" action="write_ok.jsp" method="post" class="needs-validation form-cont" novalidate>
            <div class="mb-3">
                <label for="title" class="form-label">Title</label>
                <input type="text" class="form-control" id="title" name="title" placeholder="Enter the book title" required>
            </div>

            <div class="mb-3">
                <label for="author" class="form-label">Author</label>
                <input type="text" class="form-control" id="author" name="author" placeholder="Enter the author" required>
            </div>

            <div class="mb-3">
                <label for="genre" class="form-label">Genre</label>
                <select class="form-select" id="genre" name="genre" required>
                    <option value="">Select genre</option>
                    <option>Classic</option>
                    <option>Fantasy</option>
                    <option>Science Fiction</option>
                    <option>Romance</option>
                    <option>Thriller</option>
                    <option>Mystery</option>
                    <option>Self Development</option>
                </select>
            </div>

            <div class="mb-3">
                <label for="price" class="form-label">Price</label>
                <div class="input-group">
                    <span class="input-group-text">$</span>
                    <input type="number" class="form-control price-input" id="price" name="price" required>
                </div>
            </div>

            <div class="row">
                <div class="col-md-6 mb-3">
                    <label for="quantity" class="form-label">Quantity</label>
                    <input type="number" class="form-control" id="quantity" name="quantity" min="0" required>
                </div>

                <div class="col-md-6 mb-3">
                    <label for="stock" class="form-label">Stock Status</label>
                    <select class="form-select" id="stock" name="stock" required>
                        <option value="">Select stock status</option>
                        <option>In Stock</option>
                        <option>Low Stock</option>
                        <option>Out of Stock</option>
                    </select>
                </div>
            </div>

            <div class="text-end mt-5">
                <a href="list.jsp" class="btn btn-secondary me-2">Cancel</a>
                <button type="submit" class="btn btn-primary add-btn-width" onclick="add(event)" style="width: 150px;">Add Book</button>
            </div>
        </form>
    </div>

    <!-- Include footer -->
    <%@ include file="./inc/footer.jsp" %>
</div>
</body>
</html>

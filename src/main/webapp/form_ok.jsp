<%--
  Created by IntelliJ IDEA.
  User: hyoin
  Date: 11/4/24
  Time: 11:07 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% // 이 부분은 자바 코드를 쓰겠다는 의미 %%로 표현.
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String email = request.getParameter("email");
    String age = request.getParameter("age");
    String gender = request.getParameter("gender");
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>폼에서 작성된 내용</h2>
<p>Username: <%= username %></p>
<p>Password: <%= password %></p>
<p>Email: <%= email %></p>
<p>Age: <%= age %></p>
<p>Gender: <%= gender %></p>
<br/>

<a href="form.html">GO BACK TO THE FORM</a>
</body>
</html>
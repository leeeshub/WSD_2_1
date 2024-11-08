<%--
  Created by IntelliJ IDEA.
  User: hyoin
  Date: 11/8/24
  Time: 9:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String id = request.getParameter("id");
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
    삭제할 항목의 ID는 <%=id %> 입니다.
    <br/>
    <a href="list.jsp">목록으로 돌아가기</a>
</body>
</html>

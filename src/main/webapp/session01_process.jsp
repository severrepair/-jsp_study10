<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2022-10-26
  Time: 오후 2:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>세션사용하기</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js     "></script>
</head>
<body>
<%
  String userId = request.getParameter("userId");
  String userPw = request.getParameter("userPw");

  if (userId.equals("admin") && userPw.equals("1234")){
    session.setAttribute("userId", userId);
    session.setAttribute("userPw", userPw);
    out.println("세션 설정이 성공했습니다.");
    out.println(userId + "님 환영합니다.");
  }
  else {
    out.println("세션 설정이 실패했습니다.");
  }
%>

</body>
</html>

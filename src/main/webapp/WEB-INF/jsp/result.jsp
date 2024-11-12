<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ page import="model.User" %>
<%
User registerUser = (User)session.getAttribute("registerUser");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ユーザ登録</title>
</head>
<body>

    <h1>登録完了しました</h1>
    <a href="Touroku.jsp">戻る</a>
	<a href="index.jsp">ログイン画面はこちら</a>
</body>
</html>
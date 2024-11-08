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
	社員番号：<%=registerUser.getId() %><br>
    苗字（カナ）：<%=registerUser.getFamilyname() %> 
    名前（カナ）：<%=registerUser.getName() %>"様"<br>
    <h1>登録完了しました</h1>
    <a href="RegisterUser">戻る</a>
	<a href="index">ログイン画面はこちら</a>
</body>
</html>
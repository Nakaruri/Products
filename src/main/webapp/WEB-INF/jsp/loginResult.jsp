<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="model.User" %>
<%
//セッションスコープからユーザー情報を取得
User loginUser = (User)session.getAttribute("loginUser");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>勤怠管理</title>
</head>
<body>
<% if(loginUser!= null){%>
	<a href = "kintai.jsp"></a>
  <% }else{ %>
 　<p>ログインに失敗しました</p>
  <form action="Login" method="POST">
	社員番号：&nbsp;
	<input type="text"name="id"id="id" placeholder="例:aB123456" required><br>
	パスワード：&nbsp;
 	<input type="password" name="pass"id="pass" required><br>
 	<input type ="submit" value="ログイン">
 </form>
  <% } %>
</body>
</html>
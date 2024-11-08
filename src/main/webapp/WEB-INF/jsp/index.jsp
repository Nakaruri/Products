<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ログイン画面</title>
</head>
<body>
<h1>勤怠ログイン</h1>
<form action="/Login" method="POST">
	社員番号：&nbsp;
	<input type="text"name="id"id="id" placeholder="例:aB123456" required><br>
	パスワード：&nbsp;
 	<input type="password" name="pass"id="pass" required><br>
 	<button type="submit">Login</button>
 </form>
</body>
</html>
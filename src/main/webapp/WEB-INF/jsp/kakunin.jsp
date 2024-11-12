<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.User" %>
<%
User registerUser = (User)session.getAttribute("registerUser");
if (registerUser == null) {
    response.sendRedirect("/portfolio/RegisterUser");  // セッションがない場合は元のフォームにリダイレクト
    return;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ユーザ登録</title>
</head>
<body>
	<main>
        <article>
            <h1>登録内容の確認</h1>
            <p>
                社員番号：<%=registerUser.getId() %><br>
                苗字（カナ）：<%=registerUser.getFamilyname() %><br>
                名前（カナ）：<%=registerUser.getName() %><br>
                生年月日：<%=registerUser.getbirthday() %><br>
                部門：<%=registerUser.getBumon() %><br>
                部署：<%=registerUser.getBusho() %><br>
            </p>
            <a class ="button" href = "RegisterUser">戻る</a>
            <a class ="button" href = "RegisterUser?action=done">登録</a>
        </article>
    </main>
</body>
</html>
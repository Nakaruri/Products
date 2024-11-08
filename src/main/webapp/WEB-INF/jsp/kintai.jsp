<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Kintai</title>
    <link href="./css/kintaiCSS.css" rel="stylesheet" type="text/css">
    <script src="./js/kintai.js"defer></script>
</head>
<body>
    <main>
        <article>
            <h1><span id="today">10月28日</span>の勤怠</h1>
            <p><span id="now">23:34:30</span></p>
            <form action="#"method="POST">
                <label for="memberId">
                社員番号:&nbsp;
                <input type="text"name="memberId"id="memberId" placeholder="例:aB123456" required>
            </label><br>
            <label for="memberPassword">
                パスワード:&nbsp;
                <input type="password"name="memberPassword"id="memberPassword" required>
            </label><br>
            <div class="btn-group">
                <button type="submit" id="btn-01">出勤</button>
                <button type="submit"id="btn-02">退勤</button>
            </div>
            </form>
        </article>
    </main>
</body>
</body>
</html>
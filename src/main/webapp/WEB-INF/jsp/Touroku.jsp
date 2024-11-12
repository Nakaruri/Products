<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ユーザ登録</title>
    <link href="./css/tourokuCSS.css" rel="stylesheet" type="text/css">
    <script src="./js/tourokuJS.js" type="text/javascript" defer></script>
</head>
<body>
    <main>
        <article>
            <h1>従業員情報の登録</h1>
            <form action="/portfolio/RegisterUser" method="POST">
                <label for="memberId">社員番号：&nbsp;
                    <input type="text"name="id"id="id" placeholder="例:aB123456" required>
                </label><br>
                <label for="familyName">苗字（カナ）：&nbsp;
                    <input type="text"name="familyname"id="familyname" placeholder="例:ナカムラ" required>
                </label><br>
                <label for="name">名前（カナ）：&nbsp;
                    <input type="text"name="name"id="name" placeholder="例:ルリ" required>
                </label><br>
                <label for="birthday">生年月日：&nbsp;
                    <input type="text"name="birthday"id="birthday" placeholder="例:1998年9月8日→19980908" size="22"required>
                </label><br>
                <label for="bumon">部門：&nbsp;
                    <select name="bumon"id="bumon" required>
                        <option value="" selected>選択してください</option>
                        <option value="eigyo">営業部</option>
                        <option value="soumu">総務部</option>
                        <option value="kenkyu">研究開発部</option>
                    </select>
                </label><br>
                <label for="busho">部署：&nbsp;
                    <select name="busho"id="busho" required>
                        <option value="" selected>選択してください</option>
                    </select>
                </label><br>
                <label for="pass">パスワード：&nbsp;
                    <input type="password" name="pass"id="pass" required>
                </label><br>
            <label><input id="check" type="checkbox">利用規約に同意する</label><br>
            <input id="button" type="submit" value="確認" >
            </form>
        </article>
    </main>
</body>
</html>        
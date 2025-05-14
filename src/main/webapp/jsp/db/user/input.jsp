<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form method="post" action="/db/user/create">
		<label>이름 : </label> <input type="text"> <br>
		<label>생년월일 : </label> <input type="text"> <br>
		<label>이메일 : </label> <input type="text"> <br>
		<label>자기소개</label><input type="text"><br>
		<textarea></textarea><br>
		<button type="button">추가</button>
	</form>
</body>
</html>
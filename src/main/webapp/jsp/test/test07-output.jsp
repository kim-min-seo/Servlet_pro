<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<h2>메뉴검색</h2>
		
		<form method="get" action="/jsp/test/test07.jsp">
			<div class="form-group">
				<input type="text" name="menu" class="form-control" required>
			</div>
			
			<div class="form-check mb-3">
				<input class="form-check-input" type="checkbox" name="excludeLow" id="excludeLow" value="true" >
				<label class="form-check-label" for="excludeLow">4점 이하 제외</label>
			</div>
			
			<button type="submit" class="btn btn-success">검색</button>
		</form>
	</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<body class="container m-5">
	<h4 class="font-weight-bold mb-3">길이변환</h4>
	<form method="get" action="/jsp/test/test04.jsp" class="form-inline">
		<div class="form-group mr-2">
			<input type="text" name="length" class="form-control" required>
			<span class="ml-2">cm</span>
		</div>
		<br>
		<div class="form-check form-check-inline ml-3" >
			<input class="form-check-input" type="checkbox" name="unit" value="inch">
			<label class="form-check-label">인치</label>
		</div>
		<div class="form-check form-check-inline">
			<input class="form-check-input" type="checkbox" name="unit" value="yard">
			<label class="form-check-label">야드</label>
		</div>
		<div class="form-check form-check-inline">
			<input class="form-check-input" type="checkbox" name="unit" value="foot">
			<label class="form-check-label">피트</label>
		</div>
		<div class="form-check form-check-inline">
			<input class="form-check-input" type="checkbox" name="unit" value="meter">
			<label class="form-check-label">미터</label>
		</div>
		<br><br>
		<button type="submit" class="btn btn-success">변환</button>
	</form>
</body>
</html>
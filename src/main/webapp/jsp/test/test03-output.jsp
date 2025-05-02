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
	
	<h3 class="form-inline justify-content-center mt-3">날짜, 시간 링크</h3>

    <!-- form으로 묶은 버튼 그룹 -->
    <form class="form-inline justify-content-center mt-3" method="get" action="/jsp/test/test03.jsp">
        <button type="submit" name="type" value="time" class="btn btn-info mr-2">현재 시간 확인</button>
        <button type="submit" name="type" value="date" class="btn btn-success">현재 날짜 확인</button>
    </form>
</body>
</html>
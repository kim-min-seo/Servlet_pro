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
 	<label style="font-size: 25px;"><strong>체격 조건 입력</strong></label><br><br>
	<form class="form-inline" method="get" action="/jsp/test/test02.jsp">
       
       <label></label> <input type="text" name="height" > <span>cm</span>
       <label></label><input type="text" name="weight" > <span>kg</span>
        <button  type="submit" class="btn btn-primary">계산</button>
	
</body>
</html>
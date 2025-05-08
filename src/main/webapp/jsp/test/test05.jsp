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
	<%
		// 2개의 수 사칙연산 중 하나
		int number1 = Integer.parseInt(request.getParameter("number1"));
		int number2 = Integer.parseInt(request.getParameter("number2"));
		
		// +, -, x , /
		String operator = request.getParameter("operation");
		double result = 0;
		if(operator.equals("+")){
			result = number1 + number2;
		} else if(operator.equals("-")){
			result = number1 - number2;
		} else if(operator.equals("X")){
			result = number1 * number2;
		} else {
			result = number1 / (double)number2;
		} 
		
	%>
	<div class="conatainer">
		<h2>계산 결과</h2>
		<div class="display-4"><%= number1 %><%= operator %><%= number2 %><span class="text-primary">32</span></div>
	</div>
</body>
</html>
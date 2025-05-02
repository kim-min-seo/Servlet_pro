<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Get method - form 태그</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<body>
	<%
		String heightstr = request.getParameter("height");
		String weightstr = request.getParameter("weight");
		
		
		String result = "";
		
		
		double height = Integer.parseInt(heightstr);
		double weight = Integer.parseInt(weightstr);
		
		double BMI =  weight / ((height / 100.0) * (height / 100.0));
		
		if(BMI < 18.5){
			result = "저체중";
		} else if(BMI >= 18.5 && BMI < 25){
			result = "정상";
		} else if(BMI >= 25 && BMI < 30){
			result = "과체중";
		} else if(BMI >= 30){
			result = "비만";
		}
	%>
	<div class="border rounded p-4 shadow-sm">
    <h5 class="mb-3">BMI 측정 결과</h5>
    <p class="fs-1" style="font-size: 30px;">
      당신은 <span class="text-info "><%= result %></span> 입니다.
    </p>
    <p class="text-muted small mb-0">BMI 수치 : <%= String.format("%.10f", BMI) %></p>
  </div>
	
	
	
</body>
</html>
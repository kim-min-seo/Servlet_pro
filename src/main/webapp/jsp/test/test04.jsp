<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<body class="container mt-5">
	<% 
	String[] units = request.getParameterValues("unit");
	String lengthstr = request.getParameter("length");
	
	 double lengthCm = Double.parseDouble(lengthstr);
	
	 double inch = lengthCm / 2.54;
	 double yard = lengthCm / 91.44;
	 double foot = lengthCm / 30.48;
	 double meter = lengthCm / 100.0;
	 
	 
	%>
	<h4 class="font-weight-bold">변환 결과</h4>
	<div class="h4 font-weight-bold" ><%= lengthCm %> cm</div>
	<hr>
	<%
	if(units != null){
		for(String unit : units){
			String result = "";
			String symbol = "";
			if("inch".equals(unit)){
				result = String.format("%.1f", inch);
				symbol = "in";
			} else if ("yard".equals(unit)){
				result = String.format("%.15f", yard);
				symbol = "yd";
			} else if ("foot".equals(unit)){
				result = String.format("%.15f", foot);
				symbol = "ft";
			} else if ("meter".equals(unit)){
				result = String.format("%.1f", meter);
				symbol = "m";
			}
			%>
			<div class="h4 font-weight-bold"><%= result %><%= symbol %></div>
		<% 
		}
	}
	%>
</body>
</html>
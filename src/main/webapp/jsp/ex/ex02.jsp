<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Arrays" %>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP Get method</title>
</head>
<body>
	<%-- 이름과 생년월일을 전달 받고, 이름과 나이를 table로 구성--%>
	
	<%
		String name = request.getParameter("name");
		String birthday = request.getParameter("birthday");
		
		int year = Integer.parseInt(birthday.substring(0,4));
		
		int age = 2025 - year + 1;
		
	%>
	<table border="1">
		<tr>
			<th>이름</th>
			<th><%= name %></th>
		</tr>
		<tr>
			<th>나이</th>
			<th><%= age %></th>
		</tr>
	</table>
</body>
</html>
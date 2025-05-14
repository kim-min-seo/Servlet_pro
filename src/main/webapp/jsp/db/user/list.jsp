<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.minseokim1222.common.MysqlService" %>
    <%@ page import = "java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%
		MysqlService mysqlService =	new MysqlService();
	
		mysqlService.connect();
		ResultSet resultSet = mysqlService.select("SELECT * FROM `new_user`");
		
	%>
	<table border="1">
		<thead>
			<tr>
				<th>이름</th>
				<th>이메일</th>
				<th>자기소개</th>
			</tr>
		</thead>
		<tbody>
		<% while(resultSet.next()){ %>
			<tr>
				<td><%= resultSet.getString("name") %></td>
				<td><%= resultSet.getString("email") %></td>
				<td><%= resultSet.getString("introduce") %></td>	
			</tr>
			<% } %>
		</tbody>
	</table>
</body>
</html>
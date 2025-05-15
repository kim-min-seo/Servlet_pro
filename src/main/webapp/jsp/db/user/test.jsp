<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.minseokim1222.common.MysqlService" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>즐겨찾기 목록</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<body>
	
	<div class="container mt-4 ">
	<table class="table">
	    <thead>
	        <tr>
	            <th>사이트</th>
	            <th>사이트 주소</th>
	            <th></th>
	        </tr>
	    </thead>
	    <tbody>
	    <%
	   	 MysqlService mysqlService = MysqlService.getInstance();
	     mysqlService.connect();
	     
	     
	     
	     List<Map<String, Object>> userList = mysqlService.select("SELECT name, url, id FROM `favorite` ORDER BY id DESC");
			
		mysqlService.disconnect();
		
			for(Map<String, Object> row : userList){
				String name = (String) row.get("name");
				String url = (String) row.get("url");
				Integer id = (Integer) row.get("id");

	    %>
	    	<tr>
	    	
	    		<td><%= name %></td>
	    		<td><a href="<%= url%>"><%= url %></a></td>
	    		<td><a href="/db/favorite/delete?id=<%= id %>" >삭제</a></td>
	    	</tr>
	    	<%
			}
		
		
	    	%>
	    </tbody>
    </table>
    </div>
</body>
</html>
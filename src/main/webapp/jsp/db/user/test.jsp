<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.minseokim1222.common.MysqlService" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>즐겨찾기 목록</title>
</head>
<body>
	
	
	<table border="1">
	    <thead>
	        <tr>
	            <th>사이트</th>
	            <th>사이트 주소</th>
	        </tr>
	    </thead>
	    <tbody>
	    <%
	   	 MysqlService mysqlService = MysqlService.getInstance();
	     mysqlService.connect();
	     
	     
	     
	     List<Map<String, Object>> userList = mysqlService.select("SELECT name, url FROM `favorite` ORDER BY id DESC");
			
		mysqlService.disconnect();
		if(userList != null){
			for(Map<String, Object> row : userList){
				String name = (String) row.get("name");
				String url = (String) row.get("url");
			
	    %>
	    	<tr>
	    		<td><%= name %></td>
	    		<td><a href="<%= url%>"><%= url %></a></td>
	    	</tr>
	    	<%
			}
		  }
	    	%>
	    </tbody>
    </table>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<body>
	<%
    List<Map<String, String>> list = new ArrayList<>();
    list.add(new HashMap<String, String>() {{ put("ch", "5"); put("name", "SBS"); put("category", "지상파"); }});
    list.add(new HashMap<String, String>() {{ put("ch", "7"); put("name", "KBS2"); put("category", "지상파"); }});
    list.add(new HashMap<String, String>() {{ put("ch", "9"); put("name", "KBS1"); put("category", "지상파"); }});
    list.add(new HashMap<String, String>() {{ put("ch", "11"); put("name", "MBC"); put("category", "지상파"); }});
	%>
	
	<h3 class="text-center text-danger font-weight-bold mb-4">Sk broadband IPTV</h3>
	
	<ul class="nav nav-tabs justify-content-center mb-4 border-bottom-0">
	  <li class="nav-item"><a class="nav-link text-danger" href="test09-output1.jsp">전체</a></li>
	  <li class="nav-item"><a class="nav-link bg-danger text-white" href="test09-output2.jsp">지상파</a></li>
	  <li class="nav-item"><a class="nav-link text-danger" href="test09-output3.jsp">예능</a></li>
	</ul>
	<table class="table table-hover table-bordered text-center">
	  <thead class="thead-light"><tr><th>채널</th><th>채널명</th><th>카테고리</th></tr></thead>
	  <tbody>
	  <% for (Map<String, String> item : list) { %>
	    <tr><td><%= item.get("ch") %></td><td><%= item.get("name") %></td><td><%= item.get("category") %></td></tr>
	  <% } %>
	  </tbody>
	</table>
	<p class="text-center text-muted mt-5">Copyright 2021. marondal All Rights Reserved.</p>

</body>
</html>
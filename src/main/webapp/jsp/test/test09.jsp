<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

<style>
  .custom-tab {
    background-color: #d71920;
    display: flex;
    justify-content: space-between;
  }
  .custom-tab a, .custom-tab span {
    flex: 1;
    text-align: center;
    padding: 0.75rem 0;
    color: white !important;
    text-decoration: none;
    font-weight: bold;
  }
  .custom-tab a:hover {
    background-color: #b31217;
  }
  
  .custom-tab a.active {
    background-color: #d71920 !important;
    color: white !important;
  }

  
  th {
  background-color: white !important;
  color: black !important;
  text-align: center;
}
</style>

</head>
<body class="container mt-5">
	<%
	  
	 List<Map<String, String>> list = new ArrayList<>();
    Map<String, String> map = new HashMap<String, String>() {{ put("ch", "5"); put("name", "SBS"); put("category", "지상파"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "7"); put("name", "KBS2"); put("category", "지상파"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "9"); put("name", "KBS1"); put("category", "지상파"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "11"); put("name", "MBC"); put("category", "지상파"); } };
    list.add(map);

    map = new HashMap<String, String>() {{ put("ch", "54"); put("name", "OCN"); put("category", "영화"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "56"); put("name", "Screen"); put("category", "영화"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "57"); put("name", "Mplex"); put("category", "영화"); } };
    list.add(map);

    map = new HashMap<String, String>() {{ put("ch", "30"); put("name", "KBS 드라마"); put("category", "드라마"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "32"); put("name", "MBC 드라마"); put("category", "드라마"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "34"); put("name", "Olive"); put("category", "드라마"); } };
    list.add(map);

    map = new HashMap<String, String>() {{ put("ch", "3"); put("name", "tvN"); put("category", "예능"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "28"); put("name", "MBC Every1"); put("category", "예능"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "48"); put("name", "JTBC2"); put("category", "예능"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "49"); put("name", "E채널"); put("category", "예능"); } };
    list.add(map);

    map = new HashMap<String, String>() {{ put("ch", "120"); put("name", "SPOTV"); put("category", "스포츠"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "121"); put("name", "KBSN 스포츠"); put("category", "스포츠"); } };
    list.add(map);
	%>
		
	<header class="text-center mb-4">
	  <h3 class="text-danger font-weight-bold">Sk broadband IPTV</h3>
	</header>
	
	
	<nav class="custom-tab mb-4">
	  <a href="test09.jsp" >전체</a>
	  <a href="test09.jsp?category=지상파" >지상파</a>
      <a href="test09.jsp?category=드라마" >드라마</a>
	  <a href="test09.jsp?category=예능" >예능</a>
      <a href="test09.jsp?category=영화" >영화</a>
      <a href="test09.jsp?category=스포츠" >스포츠</a>
	</nav>
	
	
	<section>
	  <table class="table table-hover table-bordered text-center">
	    <thead>
	      <tr>
	        <th>채널</th>
	        <th>채널명</th>
	        <th>카테고리</th>
	      </tr>
	    </thead>
	    <tbody>
	      <%
	      String categoryFilter = request.getParameter("category");
	  	  if (categoryFilter == null) categoryFilter = "전체";
	        for (Map<String, String> item : list) {
	          if ("전체".equals(categoryFilter) || item.get("category").equals(categoryFilter)) {
	      %>
	      <tr>
	        <td><%= item.get("ch") %></td>
	        <td><%= item.get("name") %></td>
	        <td><%= item.get("category") %></td>
	      </tr>
	      <%
	          }
	        }
	      %>
	    </tbody>
	  </table>
	</section>
	
	<footer class="text-center text-muted mt-5">
	  Copyright 2021. marondal All Rights Reserved.
	</footer>
		
</body>
</body>
</html>
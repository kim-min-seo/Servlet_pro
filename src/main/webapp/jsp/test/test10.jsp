<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<link rel="stylesheet" href="style.css">
</head>
<body>
	<%
    Map<String, Object> artistInfo = new HashMap<>();
    artistInfo.put("name", "아이유");
    artistInfo.put("debute", 2008);
    artistInfo.put("agency", "EDAM엔터테인먼트");
    artistInfo.put("photo", "https://musicmeta-phinf.pstatic.net/artist/000/112/112579.jpg?type=ff300_300");

    List<Map<String, Object>> musicList = new ArrayList<>();

    Map<String, Object> musicInfo = new HashMap<>();
    musicInfo.put("id", 1); musicInfo.put("title", "팔레트"); musicInfo.put("album", "Palette"); musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/002/000/2000240.jpg?type=r360Fll");
    musicInfo.put("time", 217); musicInfo.put("composer", "아이유"); musicInfo.put("lyricist", "아이유"); musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 2); musicInfo.put("title", "좋은날"); musicInfo.put("album", "Real"); musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/000/184/184117.jpg?type=r360Fll");
    musicInfo.put("time", 233); musicInfo.put("composer", "이민수"); musicInfo.put("lyricist", "김이나"); musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 3); musicInfo.put("title", "밤편지"); musicInfo.put("album", "palette"); musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/002/000/2000240.jpg?type=r360Fll");
    musicInfo.put("time", 253); musicInfo.put("composer", "제휘,김희원"); musicInfo.put("lyricist", "아이유"); musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 4); musicInfo.put("title", "삐삐"); musicInfo.put("album", "삐삐"); musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/002/559/2559408.jpg?type=r360Fll");
    musicInfo.put("time", 194); musicInfo.put("composer", "이종훈"); musicInfo.put("lyricist", "아이유"); musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 5); musicInfo.put("title", "스물셋"); musicInfo.put("album", "CHAT-SHIRE"); musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/000/592/592471.jpg?type=r360Fll");
    musicInfo.put("time", 194); musicInfo.put("composer", "아이유,이종훈,이채규"); musicInfo.put("lyricist", "아이유"); musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 6); musicInfo.put("title", "Blueming"); musicInfo.put("album", "Love poem"); musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/003/399/3399860.jpg?type=r360Fll");
    musicInfo.put("time", 217); musicInfo.put("composer", "아이유,이종훈,이채규"); musicInfo.put("lyricist", "아이유"); musicList.add(musicInfo);
	%>
	<div id="wrap">
	  <header class="d-flex align-items-center py-3">
	    <h1 class="text-success mb-0 mr-3">Melong</h1>
	    <form class="form-inline d-flex align-items-center" action="test10-output.jsp" method="get">
	      <input type="text" name="title" class="form-control mr-1 search-input">
	      <button type="submit" class="btn btn-primary">검색</button>
	    </form>
	  </header>
	
	  <div class="mb-4">
	    <ul class="nav pl-2 ml-1">
	      <li class="nav-item"><a class="nav-link text-dark font-weight-bold small" href="#">멜롱차트</a></li>
	      <li class="nav-item"><a class="nav-link text-dark font-weight-bold small" href="#">최신음악</a></li>
	      <li class="nav-item"><a class="nav-link text-dark font-weight-bold small" href="#">장르음악</a></li>
	      <li class="nav-item"><a class="nav-link text-dark font-weight-bold small" href="#">멜롱DJ</a></li>
	      <li class="nav-item"><a class="nav-link text-dark font-weight-bold small" href="#">뮤직어워드</a></li>
	    </ul>
	  </div>
	
	  <section>
	    <div class="artist-box mb-4">
	      <img src="<%= artistInfo.get("photo") %>" alt="아이유 사진">
	      <div>
	        <h5><%= artistInfo.get("name") %></h5>
	        <p><%= artistInfo.get("agency") %></p>
	        <p><%= artistInfo.get("debute") %> 데뷔</p>
	      </div>
	    </div>
	
	    <h3 class="mb-3 font-weight-bold">곡 목록</h3>
	    <table class="table">
	      <thead>
	        <tr>
	          <th style="width: 20%; padding-left: 40px;">No</th>
	          <th style="width: 40%;">제목</th>
	          <th style="width: 40%;">앨범</th>
	        </tr>
	      </thead>
	      <tbody>
	        <% for (Map<String, Object> m : musicList) { %>
	        <tr>
	          <td style="padding-left: 40px;"><%= m.get("id") %></td>
	          <td><a href="test10-output.jsp?title=<%= m.get("title") %>"><%= m.get("title") %></a></td>
	          <td><%= m.get("album") %></td>
	        </tr>
	        <% } %>
	      </tbody>
	    </table>
	  </section>
	
	  <footer class="text-muted mt-5 pt-3">
	    <small>&copy; 2021. Melong All Rights Reserved.</small>
	  </footer>
	</div>
</body>
</html>
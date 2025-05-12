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
    
    String titleParam = request.getParameter("title");

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

    Map<String, Object> song = null;
    for (Map<String, Object> m : musicList) {
        if (m.get("title").equals(titleParam)) {
            song = m;
            break;
        }
    }
	%>
	<div id="wrap" class="container mt-4">
   
    <header class="d-flex align-items-center py-3 mb-3">
        <h1 class="text-success mb-0 mr-3">Melong</h1>
        <form class="form-inline ml-3" action="test10-output.jsp" method="get">
            <input type="text" name="title" class="form-control mr-2"  style="width: 350px;">
            <button type="submit" class="btn btn-outline-success">검색</button>
        </form>
    </header>

    
    <ul class="nav mb-3">
        <li class="nav-item"><a class="nav-link font-weight-bold text-dark" href="test10.jsp">멜롱차트</a></li>
        <li class="nav-item"><a class="nav-link font-weight-bold text-dark" href="#">최신음악</a></li>
        <li class="nav-item"><a class="nav-link font-weight-bold text-dark" href="#">장르음악</a></li>
        <li class="nav-item"><a class="nav-link font-weight-bold text-dark" href="#">멜롱DJ</a></li>
        <li class="nav-item"><a class="nav-link font-weight-bold text-dark" href="#">뮤직어워드</a></li>
    </ul>

	
		
	<h5 class="font-weight-bold">곡 정보</h5>
	<% if (song != null) { %>
	  <div class="d-flex p-4 mt-3" style="border: 2px solid #28a745; align-items: flex-start;">
	   
	    <img src="<%= song.get("thumbnail") %>" style="width: 180px; margin-right: 40px;">
	
	 
	    <div class="media-body" style="padding-top: 0;">
	      <div style="font-size: 48px; line-height: 1.2; margin-top: 0;"><%= song.get("title") %></div>
	      <div style="color: #28a745; font-size: 16px; margin-bottom: 18px;"><%= song.get("singer") %></div>
	      <div style="font-size: 14px; margin-bottom: 4px;">앨범 &nbsp; <%= song.get("album") %></div>
	      <div style="font-size: 14px; margin-bottom: 4px;">
	 			 재생시간 &nbsp; <%= String.format("%d:%02d", ((int)song.get("time") / 60), ((int)song.get("time") % 60)) %>
	      </div>
	     
	      <div style="font-size: 14px; margin-bottom: 4px;">작곡가 &nbsp; <%= song.get("composer") %></div>
	      <div style="font-size: 14px;">작사가 &nbsp; <%= song.get("lyricist") %></div>
	    </div>
	  </div>
	
	 
	  <div class="mt-5">
	    <h5 class="font-weight-bold">가사</h5>
	    <hr>
	    <p>가사 정보 없음</p>
	  </div>
	<% } %>
	
	
	<footer class="text-left mt-5 border-top pt-3 text-muted">
	  <small>&copy; 2021. Melong All Rights Reserved.</small>
	</footer>
	
</div>
</body>
</html>
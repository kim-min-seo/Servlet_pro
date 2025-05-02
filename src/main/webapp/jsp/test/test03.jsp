<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body class="container mt-5">
	<%
	String type = request.getParameter("type");
	Date now = new Date();
	String output = "";
	 String outputLabel = "";
	SimpleDateFormat format = null;
	 
	 if ("date".equals(type)) {
        format = new SimpleDateFormat("yyyy년 M월 d일");
        output = format.format(now);
        outputLabel = "현재 날짜";
    } else {
        format = new SimpleDateFormat("HH시 mm분 ss초");
        output = format.format(now);
        outputLabel = "현재 시간";
    }
%>

    <div class="text-left">
        <div class="text-muted" style="font-size: 0.95rem;">• <%= outputLabel %></div>
        <div style="font-size: 2.8rem; font-weight: 300; margin-top: 0.5rem;">
            <%= outputLabel %> <strong><%= output %></strong>
        </div>
    </div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Arrays" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	int[] scores = {80, 90, 100, 95, 80};
	int sum3 = 0;
	for(int i = 0; i < scores.length; i++){
		sum3 += scores[i];
	}
	double average = sum3 / (double)scores.length;
	%>
	<h3>점수 평균은 <%= average %> 입니다.</h3>
	
	<%
	List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
	
	int sum1 = 0;
	
	
	for(String s : scoreList){
		if(s.equals("O")){
			sum1 += 10;
		} else{
			sum1 += 0;
		}
	}
	%>
	<h3>채점 결과는 <%= sum1 %>점 입니다.</h3>
	<%!
	//jsp의 선언문  문법을 사용해서 1부터 N까지의 합을 구하는 함수를 만드세요.
	//만든 함수를 이용해서 50까지의 합의 결과를 출력하세요.
		public int allSum(int N){
			int sum = 0;
			for(int i = 0; i <= N; i++){
				sum += i;
			}
			return sum;
	}
	
	%>
	<%
		int sums = allSum(50);
	%>
	<h3>1에서 50까지의 합은 <%= sums %></h3>
	
	<%
	String birthDay = "20010820";
	int year = Integer.parseInt(birthDay.substring(0,4));
	int age = 2025 - year + 1;
	
	
	%>
	<h3>20010820의 나이는 <%=age %>살 입니다.</h3>
</body>
</html>
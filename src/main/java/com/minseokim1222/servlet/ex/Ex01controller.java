package com.minseokim1222.servlet.ex;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Ex01controller extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		// 결과물에 대한 정보 설정
		// Response Header
		// Character set : utf-8
		response.setCharacterEncoding("utf-8");
		// 데이터 타입 (content type)
		// MIME : 데이터의 타입을 구분하기 위한 정해진 문자열
		response.setContentType("text/plain");
		
		// 결과물
		// Response Body
		PrintWriter out = response.getWriter();		
		out.println("Servlet Response!!");
		
		// 현재 날짜 시간을 보여주는 페이지
		Date now = new Date();
		
		out.println(now);
		
		// Date 객체의 날짜 시간 정보를 원하는 규격의 날짜 시간 문자여로 만들기
		// 2025년 4월 25일 16:54:11
		SimpleDateFormat formater = new SimpleDateFormat("yyyy년 M월 d일 HH:mm:ss");
		
		String dateTimeString = formater.format(now);
		
		out.println(dateTimeString);
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}
}

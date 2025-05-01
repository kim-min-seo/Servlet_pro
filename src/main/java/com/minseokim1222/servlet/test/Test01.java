package com.minseokim1222.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Test01 extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response)throws IOException{
		
		response.setCharacterEncoding("utf-8");
		
		response.setContentType("text/plain");
		
		PrintWriter out = response.getWriter();
		out.print("오늘의 날짜는 ");
		
		Date now = new Date();
		
		
		
		SimpleDateFormat formater = new SimpleDateFormat("yyyy년 M월 d일");
		
		String dateTimeString = formater.format(now);
		
		out.println(dateTimeString);
		
	}

}

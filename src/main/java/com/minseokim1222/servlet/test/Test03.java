package com.minseokim1222.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test03")
public class Test03 extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
        Date now = new Date();
		
		
		
		SimpleDateFormat formater = new SimpleDateFormat("yyyy년 M월 d일 HH시 mm분 ss초");
		
		String dateTimeString = formater.format(now);
		
		//out.println( dateTimeString);
		out.println(""
				+ "<html>\n"
				+ "       <head><title>기사</title></head>\n"
				+ "       <body>\n"
				+ "            <h2>[단독] 고양이가 야옹해</h2>"
				+ "               <br>기사 입력시간 :" + dateTimeString +"<br>"
						+ "<hr>"
						+ "끝"
				+ "        </body>\n"
				+ "</html>");
		
	}
}

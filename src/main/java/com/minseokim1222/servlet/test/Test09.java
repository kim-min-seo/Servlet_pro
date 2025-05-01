package com.minseokim1222.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test09")
public class Test09 extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String name = request.getParameter("name");
		String introduce = request.getParameter("introduce");
		
		
		
		
		
		out.println(""
				+ "<html>\n"
				+ "<head><title>자기소개</title></head>"
				+ "<body>\n");
		out.println(""
				+ "<h3>" + name  + "님 지원이 완료 되었습니다. </h3>"
						+ "<hr>"
				+ " 지원 내용 <br>"
				+ introduce);		
		
		out.println(""
		        + "</body>"
				+ "</html>");
	}
}

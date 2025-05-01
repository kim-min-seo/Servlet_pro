package com.minseokim1222.servlet.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/ex05")
public class Ex05Controller extends HttpServlet {

	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
	
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String name = request.getParameter("name");
		String birthday = request.getParameter("birthday");
		
		int year = Integer.parseInt(birthday.substring(0,4));
		
		int age = 2025 - year + 1;
		
		out.println(""
				+ "<html>\n"
				+ "<head><title>정보</title></head>"
				+ "<body>\n");
		out.println(""
				+ "<h3>이름 : " + name + "</h3>"
				+ "<h3>나이 : " + age + "</h3>");		
		
		out.println(""
		        + "</body>"
				+ "</html>");
	
	}
}

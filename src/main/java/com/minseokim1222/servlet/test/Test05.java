package com.minseokim1222.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test05")
public class Test05 extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String numberStr = request.getParameter("number");
		
		
		
		int number = Integer.parseInt(numberStr);
		
		out.println(""
				+ "<html>\n"
				+ "<head><title>구구단</title></head>"
				+ "<body>\n"
				+ "<h3>" + number + "단</h3>"
				+ "<ul>\n"
				+ gugudan(number)
				+ "</ul>\n"
				+ "</body>"
				+ "</html>");
	}
			private String gugudan(int number) {

	        String items = "";

	        for (int i = 1; i <= 9; i++) {

	            items += "<li>" + number + " X " + i + " = " + (number*i) + " </li>\n";

	        }

	        return items;
		
		
		
			}
	
}

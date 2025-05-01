package com.minseokim1222.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test10")
public class Test10 extends HttpServlet {

	private final Map<String, String> userMap =  new HashMap<String, String>() {
	    {
	        put("id", "hagulu");
	        put("password", "asdf");
	        put("name", "김인규");
	    }
	};
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		
		
		out.println(""
				+ "<html>\n"
				+ "<head><title>자기소개</title></head>"
				+ "<body>\n");
		if (!id.equals(userMap.get("id"))) {
			out.println("<h3>id가 일치하지 않습니다.</h3>");
		} else if (!password.equals(userMap.get("password"))) {
			out.println("<h3>password가 일치하지 않습니다.</h3>");
		} else {
			out.println("<h2><strong>" + userMap.get("name") + "님 환영 합니다.</strong></h2>");
		}
		
		out.println(""
		        + "</body>"
				+ "</html>");
	}
}

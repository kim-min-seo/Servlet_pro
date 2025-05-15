package com.minseokim1222.database.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.minseokim1222.common.MysqlService;

@WebServlet("/db/favorite/create")
public class FavoriteCreateController extends HttpServlet{
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		
		
		response.setContentType("text/plain");
		
		PrintWriter out = response.getWriter();
		
		String name = request.getParameter("name");
		String url = request.getParameter("url");
		
		MysqlService mysqlService = MysqlService.getInstance();
		
		mysqlService.connect();
		String query = "INSERT INTO `favorite` \r\n"
				+ "(`name`, `url`)\r\n"
				+ "\r\n"
				+ " VALUES\r\n"
				+ "('"+ name + "', '" + url + "')";
				
		int count = mysqlService.update(query);
		mysqlService.disconnect();	
		
		response.sendRedirect("/jsp/db/user/test.jsp");
				
				
				
				
				
				
				
				
				
				
				
				
	}
}

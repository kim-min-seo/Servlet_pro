package com.minseokim1222.database.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.minseokim1222.common.MysqlService;

@WebServlet("/db/favorite/delete")
public class FavoriteDeleteController extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		
		
		response.setContentType("text/plain");
		
		PrintWriter out = response.getWriter();
		
		String id = request.getParameter("id");
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		String query = "DELETE FROM `favorite` WHERE `id` =  " + id;
		
		int count = mysqlService.update(query);
		
		 mysqlService.disconnect();
		 
		response.sendRedirect("/jsp/db/user/test.jsp");
	}
}

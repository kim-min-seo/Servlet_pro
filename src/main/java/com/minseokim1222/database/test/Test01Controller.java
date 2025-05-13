package com.minseokim1222.database.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/db/test01")
public class Test01Controller extends HttpServlet {
		
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		// used_goods 테이블의 모든행을 조회해서 일부 데이터를 response에 담는다. 
		
		response.setContentType("text/plain");
		
		PrintWriter out = response.getWriter();
		
		try {
			
		// database 접속
		DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
		
		// 접속에 필요한 정보
		// 접속 주소, 포트, 사용할 데이터베이스, 사용자이름, 비밀번호
		String url = "jdbc:mysql://localhost:3306/minseo";
		String username = "root";
		String password = "root";
		
		Connection connection = DriverManager.getConnection(url, username, password);
		
//		String query = "INSERT `real_estate`\r\n"
//				+ "(`realtorld`, `address`, `area`, `type`, `price`, `rentPrice`)\r\n"
//				+ "value\r\n"
//				+ "(3, '헤라펠리스 101동 5305호',350, '매매', 1500000, 'NULL');";
//		
//		Statement statement = connection.createStatement();
//		
//		int count = statement.executeUpdate(query);
//		
//		out.println("실행 결과" + count);
		
		String query = "SELECT * FROM `real_estate` ORDER BY `id` DESC LIMIT 10;";
		
		Statement statement = connection.createStatement();
		ResultSet resultSet = statement.executeQuery(query);
				
		while(resultSet.next()) {
			
			String address = resultSet.getString("address");
			int area = resultSet.getInt("area");
			String type = resultSet.getString("type");
			
			out.println("매물 주소 : " + address + "면적 : " + area + "타입 : " + type);
		}
		
		
		statement.close();
		
		connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}

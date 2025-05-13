package com.minseokim1222.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class MysqlService {
	
	private Connection connection;
	// 데이터베이스 접속 기능
	public boolean connect() {
		
		try {
			
			// database 접속
			DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
			
			// 접속에 필요한 정보
			// 접속 주소, 포트, 사용할 데이터베이스, 사용자이름, 비밀번호
			String url = "jdbc:mysql://localhost:3306/minseo";
			String username = "root";
			String password = "root";
			
			 connection = DriverManager.getConnection(url, username, password);
	} catch (SQLException e) {
		e.printStackTrace();
		// 접속 실패
		return false;
	
		}
		return true;
	}
	
	// 쿼리 수행기능
	public ResultSet  select(String query) {
		Statement statement = connection.createStatement();
		try {
			ResultSet resultSet = statement.executeQuery(query);
			return resultSet;
		} catch (SQLException e) {
			
		}
		
	}
	
	// 데이터베이스 접속 끊기
	public boolean dissconnect() {
		try {
			connection.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
			return false;
		}
		return true;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}

package com.lithan.ABCJOB.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DataBaseConnection {

	static Connection con;
	public static Connection getConnection() {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection(
			"jdbc:mysql://localhost:3306/nilesh_sdl","root","123456789");
		if(con != null) {
			System.out.println("DataBase connected");
		}
		
		}catch(ClassNotFoundException | SQLException e){
			e.printStackTrace();
		}
		
		
		return con;
	}
}

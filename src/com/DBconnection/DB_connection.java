package com.DBconnection ;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DB_connection 

{
	public Connection conn = null;
	public DB_connection()
	
	
	
	{
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		try {
			this.conn = DriverManager.getConnection(
					"jdbc:mysql://localhost:3307/facebook_db", "root", "1234");
			if (this.conn != null) {
				
				System.out.println("connected");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}



	
	
}
}

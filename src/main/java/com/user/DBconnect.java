package com.user;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBconnect {
	private static String url = "jdbc:mysql://localhost:3306/foododering";
	private static String username = "root";
	private static String passsword = "MySQL@SMT2000";
	
	//Declare a connection by using connection interface 
	private static Connection con;
	
	public static Connection getConnection() {
		
		try {
			// load the driver
			Class.forName("com.mysql.jdbc.Driver"); 
			
			// driver manager : the basic service for managing a set of JDBC driver
			con = DriverManager.getConnection(url, username, passsword);
			// create a connection by using getConnection method
		}catch(Exception e) {
			System.out.println("Database is not success !!!");
		}
		
		return con;
	}
}

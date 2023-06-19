package com.user;

// import packages
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class userDBUtil {
	public static boolean isSuccess;
	private static Connection con = null;	// declare connection object
	private static Statement stmt = null;	// declare statement object
	private static ResultSet rs = null;		// declare ResultSet object
	
	public static boolean insertUser(String fName, String lName, String email, String phoneNumber, String password) {
		
		try {
			con = DBconnect.getConnection();
			stmt = con.createStatement();
			String sql = "INSERT INTO users VALUES ('0','"+fName+"','"+lName+"','"+email+"','"+phoneNumber+"','"+password+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true; // data connection success, all data are inserted to DB
			}else {
				isSuccess = false;	// data connection unsuccess
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	// validate
	public static List<User> validate(String userEmail, String userPassword){
		 ArrayList<User> userArray = new ArrayList<>();
		
		try {		
			con = DBconnect.getConnection();
			stmt = con.createStatement();
			String sql = "SELECT * FROM users WHERE email = '"+userEmail+"' AND password = '"+userPassword+"'";
			rs = stmt.executeQuery(sql);
			
			if(rs.next()){
				int id = rs.getInt(1);
				String fName = rs.getString(2);
				String lName = rs.getString(3);
				String email = rs.getString(4);
				String phone = rs.getString(5);
				String password = rs.getString(6);
			
				User u = new User(id,fName,lName,email,phone,password);
				
				userArray.add(u);
			}
			else {
				userArray.clear();
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		/* ---------------------------------------
		
		boolean isValid = false;
		
		String adminEmail = "admin@gmail.com";
		String adminPassword = "admin123";
		
		String sqlAdmin = "SELECT email, password FROM email = '"+adminEmail+"' AND password = '"+adminPassword+"'";
		ResultSet rsAdmin = stmt.executeQuery(sqlAdmin);
		
		String sqlUser = "SELECT email, password FROM email = '"+userEmail+"' AND password = '"+userPassword+"'";
		ResultSet rsUser = stmt.executeQuery(sqlUser);
		
		if(rsAdmin.next()) {
			isValid = true;
			return isValid;
		}
		else if(rsUser.next()) {
			isValid = true;
			return isValid;
		}

		----------------------------------------*/
		return userArray;
	}
	
	// update user method
	public static boolean updateUser(String id, String fName, String lName, String email, String phoneNumber, String password) {
		
		try {
			con = DBconnect.getConnection();
			stmt = con.createStatement();
			String sql = "UPDATE users SET first_name = '"+fName+"', last_name = '"+lName+"', email = '"+email+"', phone_number = '"+phoneNumber+"', password = '"+password+"' WHERE id = '"+id+"'";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	
	// getUserDetails method
	public static List<User> getUserDetails(String ID){
		int convertedID = Integer.parseInt(ID);
		
		ArrayList<User> userArray = new ArrayList<>();
		
		try{
			con = DBconnect.getConnection();
			stmt = con.createStatement();
			String sql = "SELECT * FROM users WHERE id = '"+convertedID+"'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String fName = rs.getString(2);
				String lName = rs.getString(3);
				String email = rs.getString(4);
				String phoneNumber = rs.getString(5);
				String password = rs.getString(6);
				
				User u = new User(id,fName,lName,email,phoneNumber,password);
				userArray.add(u);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return userArray;
	}
	
	// deleteUser method
	public static boolean deleteUser(String id) {
		
		int convertedId = Integer.parseInt(id);
		
		try {
			con = DBconnect.getConnection();
			stmt = con.createStatement();
			String sql = "DELETE FROM users WHERE id = '"+convertedId+"'";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}
}

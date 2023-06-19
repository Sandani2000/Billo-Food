package com.user;

public class User {
	private int id;
	private String fName;
	private String lName;
	private String email;
	private String phoneNumber;
	private String password;
	
	// Default constructor
	public User() {
		super();
	}
	
	// overloaded constructor
	public User(int id, String fName, String lName, String email, String phoneNumber, String password) {
		this.id = id;
		this.fName = fName;
		this.lName = lName;
		this.email = email;
		this.phoneNumber = phoneNumber;
		this.password = password;
	}	

	// getId method
	public int getId() {
		return id;
	}

	// getName method
	public String getfName() {
		return fName;
	}

	// getlName method
	public String getlName() {
		return lName;
	}

	//gethEmail method
	public String getEmail() {
		return email;
	}

	// getPhoneNumber method
	public String getPhoneNumber() {
		return phoneNumber;
	}

	// getPassword method
	public String getPassword() {
		return password;
	}
	
	
	
	
}

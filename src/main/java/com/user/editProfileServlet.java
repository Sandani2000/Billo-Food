package com.user;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/editProfileServlet")
public class editProfileServlet extends HttpServlet {// use inheritance
	private static final long serialVersionUID = 1L;
     
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String fName = request.getParameter("fName");
		String lName = request.getParameter("lName");
		String email = request.getParameter("email");
		String phoneNumber = request.getParameter("phoneNumber");
		String password = request.getParameter("password");
	
		boolean isTrue;
		
		// call updateUser method in userDBUtil.java
		isTrue = userDBUtil.updateUser(id, fName, lName, email, phoneNumber, password);
		
		if(isTrue == true) {
			try {
				List<User> userDetails = userDBUtil.getUserDetails(id);
				request.setAttribute("uDetails", userDetails);
			}catch(Exception e){
				e.printStackTrace();
			}
			
			
			// navigate to userAccount.jsp
			RequestDispatcher dis = request.getRequestDispatcher("Jsp/userAccount.jsp");
			dis.forward(request, response);
		}
		else {
			try {
				List<User> userDetails = userDBUtil.getUserDetails(id);
				request.setAttribute("uDetails", userDetails);
			}catch(Exception e) {
				e.printStackTrace();
			}
			
			// navigate to userAccount.jsp
			RequestDispatcher dis = request.getRequestDispatcher("Jsp/userAccount.jsp");
			dis.forward(request, response);
		}
	}
}

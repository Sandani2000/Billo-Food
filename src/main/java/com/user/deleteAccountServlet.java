package com.user;

import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/deleteAccountServlet")
public class deleteAccountServlet extends HttpServlet {// use inheritance
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		
		boolean isTrue;
		isTrue = userDBUtil.deleteUser(id);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("Jsp/SignUp.jsp");
			dis.forward(request, response);
		}
		else {
			try { 
				// calling getUserDetails function in userDBUtil.java
				List<User> userDetails = userDBUtil.getUserDetails(id);
				request.setAttribute("uDetails", userDetails);
			}catch(Exception e) {
				e.printStackTrace();
			}
			
			RequestDispatcher dis = request.getRequestDispatcher("Jsp/userAccount.jsp");
			dis.forward(request, response);
		}
	}

}

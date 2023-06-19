package com.user;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javax.servlet.RequestDispatcher;

@WebServlet("/SignUpServlet")
public class SignUpServlet extends HttpServlet {// use inheritance
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//PrintWriter is a class used to write any form of data either on the console or in a file in Java
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String fName = request.getParameter("fName");
		String lName = request.getParameter("lName");
		String email = request.getParameter("email");
		String phoneNumber = request.getParameter("phoneNumber");
		String password = request.getParameter("password");
		
		boolean isTrue;
		
		// call insertUser function in userDBUtil
		isTrue = userDBUtil.insertUser(fName, lName, email, phoneNumber, password);
		
		if(isTrue == true) {
			// navigate to SignUpSuccess page
			RequestDispatcher dis = request.getRequestDispatcher("Jsp/SignUpSuccess.jsp");
			dis.forward(request, response);
		}else {
			
			/* frontend validation using javascript, 
			if user account creation process failed, then it will show a alert message to user*/ 
			out.println("<script type='text/javascript'>");
			out.println("alert('Your account creation process failed! Please Sign up again');");
			out.println("location = 'SignUp.jsp'");
			out.println("</script>");
		}
	}

}

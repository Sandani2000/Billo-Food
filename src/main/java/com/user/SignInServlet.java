package com.user;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/SignInServlet")
public class SignInServlet extends HttpServlet { // use inheritance
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//PrintWriter is a class used to write any form of data either on the console or in a file in Java
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String email =  request.getParameter("email");
		String password = request.getParameter("password");
		
		List<User> userDetails= userDBUtil.validate(email, password);
		
		if(!userDetails.isEmpty()) {
			try{
				request.setAttribute("uDetails", userDetails);
			}
			catch(Exception e) {
				e.printStackTrace();
			}
			
			RequestDispatcher dis = request.getRequestDispatcher("Jsp/userAccount.jsp");
			dis.forward(request, response);
		}else {
			
			// frontend validation, if user entered email, or password is invalid, then it will show a alert message to user 
			out.println("<script type='text/javascript'>");
			out.println("alert('Your username or password is incorrect');");
			out.println("location = 'Jsp/Sign In.jsp'");
			out.println("</script>");
		}
		
		
	}

}

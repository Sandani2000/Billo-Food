<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="../css/editProfile.css">

<title>Edit Profile</title>
</head>
<body>
	<%
		String id = request.getParameter("id");
		String fName = request.getParameter("fName");
		String lName = request.getParameter("lName");
		String email = request.getParameter("email");
		String phoneNumber = request.getParameter("phoneNumber");
		String password = request.getParameter("password");
	%>
	
	<div class="main">
        <div class="class1">
            

        </div>
        <div class="container">
            <h1>Edit Profile</h1>

            <form action="../edit" method="post">
                <div class = "in-box">
                    <div class="row1">
                        <label for="">User ID  </label>
                        <input type="text" name="id" value="<%= id%>" readonly>   <!--add readonly frontend validation-->     
                    </div>
                    <div class="blank">
                        
                    </div>
                    <div class="row1">
                        <label for="">Phone number  </label>
                        <input type="text" name="phoneNumber" value="<%= phoneNumber%>">
                    </div>
                </div>

                <div class="in-box">
                    <div class="row1">
                        <label for="">First name  </label>
                        <input type="text" name="fName" value="<%= fName%>">
                    </div>
                    <div class="blank">
                        
                    </div>
                    <div class="row1">
                        <label for="">Last name  </label>
                        <input type="text" name="lName" value="<%= lName%>">
                    </div>
                </div>

                <div class="in-box" id = "rowFlex">
                    <div class="row2">
                        <label for="">E-mail </label>
                        <input type="email" name="email" value="<%= email%>">
                    </div>

                    <div class="row2">
                        <label for="">Password  </label>
                        <input type="password" name="password" value="<%= password%>">
                    </div>
                </div>

                

                <div class="field" id="btn">
                    <input type="submit" value="Update" >
                </div>
            </form>
        </div>
    </div>
</body>
</html>
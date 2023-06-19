<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../css/deleteAccount.css"> 
<meta charset="ISO-8859-1">
<title>Delete Account</title>
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
	
	<div class="image">
        <img src="../Images/deleteAccount2.jpg" alt="">
    </div>
    <div>
        <h1> User Account Delete</h1>
	
	<form action="../delete" method="post">
        <div class="div-input">
            <label for="">User ID : </label>
            <input type="text" name="id" value="<%= id%>" readonly> <!--add readonly frontend validation-->
        </div>

        <div class="div-input">
            <label for="">First name : </label>
            <input type="text" name="fName" value="<%= fName%>" readonly> <!--add readonly frontend validation-->
        </div>

        <div class="div-input">
            <label for="">Last name : </label>
            <input type="text" name="lName" value="<%= lName%>" readonly> <!--add readonly frontend validation-->
        </div>

        <div class="div-input">
            <label for="">E-mail : </label>
            <input type="email" name="email" value="<%= email%>" readonly> <!--add readonly frontend validation-->
        </div>

        <div class="div-input">
            <label for="">Phone number : </label>
            <input type="text" name="phoneNumber" value="<%= phoneNumber%>" readonly> <!--add readonly frontend validation-->
        </div>

        <button>Delete my account</button>
    </form>
    </div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script src="../Js/SignUp.js"></script>
<script src="https://kit.fontawesome.com/11df75e725.js" crossorigin="anonymous"></script>
<link href="../css/SignUp.css" rel="styleSheet">
<meta charset="ISO-8859-1">
<title>Sign up</title>
</head>
<body>
	<div class="container">
        <h1>Sign Up</h1>

        <form action="../insert" method="post">
            <div class="in-box">
                <i class="fa-solid fa-user"></i>
                <input type="text" name="fName" placeholder="First name" required>		<!--required frontend validation-->
            </div>
            <div class="in-box">
                <i class="fa-solid fa-user"></i>
                <input type="text" name="lName" placeholder="Last name" required>		<!--required frontend validation-->
            </div>
            <div class="in-box">
                <i class="fa-solid fa-envelope"></i>
                <input type="email" name="email" placeholder="E-mail address" required>		<!--required frontend validation-->
            </div>
            <div class="in-box">
                <i class="fa-solid fa-phone"></i>
                <input type="text" name="phoneNumber" placeholder="Contact number" required> 	<!--required frontend validation-->
            </div>
            <div class="in-box">
                <i class="fa-solid fa-key"></i>
                <input type="password" name="password" id="password" placeholder="Password" required>	<!--required frontend validation-->
            </div>
            <div class="in-box">
                <i class="fa-solid fa-envelope"></i>
                <input type="password" name="confirmPassword" id="confirmPassword" placeholder="Confirm Password" onkeyup="validate_password()" required>
                															<!--required frontend validation and  onkeyup javascript frontend validation-->																							
                								
            </div>
			<span id="wrongPasswordSpan" style="margin-left: 20px;"></span>
			
            <div class="field" id="agreement">
                <input type="checkbox" required >
                Agree with <a href="">Terms and Conditions</a>
            </div>
            <div class="field" id="btn">
                <input type="submit" value="Sign Up" id ="create" onclick="wrongPasswordAlert()"> <!--Javascript alert frontend validation-->
            </div>
            <div class="field" id="text2">
                Have already an account? <a href="Sign In.jsp">Login here</a>
            </div>
            
        </form>
    </div>
</body>
</html>
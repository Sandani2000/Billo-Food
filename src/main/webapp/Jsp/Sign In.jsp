<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<script src="https://kit.fontawesome.com/11df75e725.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="../css/Sign In.css">
<title>Sign In</title>
</head>
<body>
	<div class="container">
        <h1>Sign in</h1>
        <form action="../login" method="post" name="form">
            <div class="input-boxes">
                <div class="in-box">
                    <i class="fa-solid fa-envelope"></i>
                    <input type="text" name="email" placeholder="E-mail address" required> 		<!--required frontend validation-->
                </div>
                <div class="in-box">
                    <i class="fa-solid fa-key"></i>
                    <input type="password" name="password" placeholder="Password" required>		<!--required frontend validation-->
                </div>
                <div id="flex"> 
                    <div class="text1" id="flex1">
                        <input type="checkbox">
                        Remember me
                    </div>
                    <div class="field" id="flex2">
                        <a href="">Forget password ?</a>
                    </div>
                </div>
                <div class="field" id="btn">
                    <input type="submit" value="Sign In">
                </div>
                <div class="field" id="text2">
                    Don't have an account? <a href="SignUp.jsp">Create a account</a>
                </div>
            </div>
        </form>
    </div>
</body>
</html>
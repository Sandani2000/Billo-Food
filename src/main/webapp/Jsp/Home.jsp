<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<script src="https://kit.fontawesome.com/77c24502d9.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="../css/HomeNew.css">
<title>Home</title>
</head>
<body>
	<!--Header-->
    <div class="header">
        <a href="#home"><img src="../Images/logo2.png" alt="Logo" class="logo" width="200px"></a>
        <div>
            <a href="Sign In.jsp"><button>Sign-In</button></a>
            <a href="SignUp.jsp"><button>Sign-Up</button></a>
        </div>
    </div>

	<!--Navigation Bar-->
    <ul class="Navigation">
        <li><a href="Home.jsp" class="active">Home</a></li>
        <li><a href="#">View menu</a></li>
        <li><a href="#">Place a order</a></li>
        <li><a href="userAccount.jsp">User Profile</a></li>
        <li><a href="#">Support</a></li>
        <li><a href="#">Make a inquiry</a></li>


        <div class="right">
            <li id="SearchBar"><input type="text" placeholder="Search..." class="Search"></li>
            <button class="SearchIcon"><i class="material-icons"><a href="#">Search</a></i></button>
        </div>
    </ul>

	<!--Body of home page-->
    <div class="homeBody">
        <div class="body1">
            <h1>Order Tasty And Fresh Food <br>
                <b style="color: rgb(180, 7, 7)">Any Time</b></h1>
            <button>View menu</button>
        </div>
    </div>

    <!--Footer-->
    <div class="footer">

        <div class="col-1">
            <h3>QUICK LINKS</h3>
            <a href="#">About</a>
            <a href="#">Services</a>
            <a href="#">Contact</a>
            <a href="#">Guidlines</a>
            <a href="#">Support</a>
        </div>
        <div class="col-2">
            <h3>NEWSLETTER</h3>
            <form action="">
                <input type="email" placeholder="Your email address" required>
                <br>
                <button type="submit">SUBSCRIBE NOW</button>
            </form>
        </div>
        <div class="col-3">
            <h3>CONTACT</h3>
            <p>34/2, Malwana Road,<br>Alhena,Kelaniya</p>
            <div class="social-icons">
                <i class="fab fa-facebook"></i>
                <i class="fab fa-twitter"></i>
                <i class="fab fa-instagram"></i>
                <i class="fab fa-linkedin"></i>
            </div>
        </div>

    </div>

    <div class="Copyright" style="font-style:italic;text-align:center; margin:3px;">
        <p>Copyright &copy; 2022 All Rights Reserved</p>
    </div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<script src="https://kit.fontawesome.com/77c24502d9.js" crossorigin="anonymous"></script>

<title>Home</title>
</head>

<!--Internal styles-->
<style>
	@charset "ISO-8859-1";
* {
    box-sizing: border-box;
}

body {
    margin: 30px;
    background-color:rgb(247, 255, 240) ;
    background-size: cover;
    height: cover;
    background-repeat: no-repeat;
}

.homeBody {
    background-image: url(../Images/14.jpg);
    background-size:cover;
    max-height: 450px;
    padding: 100px 30px;
}

.homeBody {
    font-family:Verdana, Geneva, Tahoma, sans-serif;
    align-items: center;
    box-sizing: border-box;

}

.homeBody .body1{
    font-size: 17px;
    border-radius: 20px;
    width: fit-content;
    background-color: rgba(236, 255, 225, 0.831);
    padding: 5px 20px;
}

.homeBody .body1 button{
    margin-bottom: 20px;
    width: 25%;
    padding: 10px;
    border-radius: 10px;
    font-family:Verdana, Geneva, Tahoma, sans-serif;

}

.logo {
    margin: 15px 0px;
    width: 200px;
}

.header {
    border-top: 15px solid rgb(52, 110, 57);
    background-color: rgba(255, 254, 254, 0.906);
    
}

.header div {
    display: block;
    float: right;
    padding-top: 35px;
    margin-right: 20px;
    position: relative;
}

.header div button {
    background-color: rgb(0, 77, 0);
    border: none;
    color: white;
    padding: 10px 40px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 20px 5px;
    border-radius: 25px;
    transition-duration: 0.4s;
    cursor: pointer;
}

.header div button:hover {
    background-color: rgb(136, 204, 0);
    color: black;
}

.Navigation {
    
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: green;
}


li {
    float: left;
}

li a {
   
    display: block;
    color: white;
    text-align: center;
    padding: 15px 30px;
    text-decoration: none;
}


li a.active {

    background-color: black;
    color:white;
}

li a:hover {
    background-color:rgb(139, 255, 139);
    color:black;
    font-weight: bold;
}

#SearchBar {
    margin: 12px 0px;
}

.right .SearchIcon {
    margin: 12px 10px;
    padding: 3px 10px;
    background-color: rgb(221, 225, 225);
    border-radius: 3px;
    border: 0px;
    cursor: pointer;
}

.right .SearchIcon a {
    display: block;
    padding: 0;
    text-decoration: none;
}

ul .right {
    float: right;
}


.body {
    background-color: rgb(243, 250, 248);
    padding: 10px;
    width: 100%;
}

.footer {
    margin-top: 10px;
    width: 100%;
    padding: 80px 15%;

    color: rgb(255, 255, 255);
    display: flex;
    background: rgb(47, 44, 44);
    
}

.footer div {
    text-align: center;
}

.col-2 {
    flex-grow: 2;
}

.footer div h3 {
    font-size: 20px;
    font-weight: bold;
    margin-bottom: 40px;
    letter-spacing: 1px;
}

.col-1 a {
    display: block;
    text-decoration: none;
    color: #efefef;

}

form input {
    width: 300px;
    height: 45px;
    border-radius: 5px;
    text-align: center;
    margin-top: 10px;
    margin-bottom: 40px;
    outline: none;
    border: none;
}

form button {
    background: transparent;
    border: 2px solid #fff;
    color: #fff;
    border-radius: 30px;
    padding: 10px 30px;
    font-size: 15px;
    text-align: center;
    cursor: pointer;
}

.social-icons {
    margin-top: 30px;
}

.social-icons i {
    font-size: 22px;
    margin: 10px;
    cursor: pointer;
}

.copyright p {
    font-style: italic;
    text-align: center;
}
</style>
<body>
	<!--Header-->
    <div class="header">
        <a href="#home"><img src="../Images/logo2.png" alt="Logo" class="logo" width="200px"></a>
        <div>
            <img alt="User" src="../Images/user3.jpg" style="width: 80px;">
        </div>
    </div>

	<!--Navigation bar-->
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
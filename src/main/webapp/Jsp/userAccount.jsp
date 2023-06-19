<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="ISO-8859-1">
    <link rel="stylesheet" href="../css/userAccount.css">
    <script src="https://kit.fontawesome.com/11df75e725.js" crossorigin="anonymous"></script>
    <title>My Profile</title>
</head>

<body>
    <div class="body">

        <div class="last">
            <img src="../Images/attachment.jpg" alt="">
        </div>

        <div class="main">
            <h1>My Profile</h1>
            <table>
                <c:forEach var="cus" items="${uDetails}">
    
                    <c:set var="id" value="${cus.id}" />
                    <c:set var="fName" value="${cus.fName}" />
                    <c:set var="lName" value="${cus.lName}" />
                    <c:set var="email" value="${cus.email}" />
                    <c:set var="phoneNumber" value="${cus.phoneNumber}" />
                    <c:set var="password" value="${cus.password}" />
    
                    <tr>
                        <td>User ID</td>
                        <td>${cus.id}</td>
                    </tr>
    
                    <tr>
                        <td>First name</td>
                        <td>${cus.fName}</td>
                    </tr>
    
                    <tr>
                        <td>Last name</td>
                        <td>${cus.lName}</td>
                    </tr>
    
                    <tr>
                        <td>Email</td>
                        <td>${cus.email}</td>
                    </tr>
    
                    <tr>
                        <td>Phone number</td>
                        <td>${cus.phoneNumber}</td>
                    </tr>
    
                    <tr>
                        <td>Password</td>
                        <td>${cus.password}</td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    
        <div class="sub">
            <a href="SignUpSuccess.jsp"><i class="fa-solid fa-arrow-left-long" id="back"></i></a>

            <c:url value="Jsp/editProfile.jsp" var="Update">
                <c:param name="id" value="${id}"></c:param>
                <c:param name="fName" value="${fName}"></c:param>
                <c:param name="lName" value="${lName}"></c:param>
                <c:param name="email" value="${email}"></c:param>
                <c:param name="phoneNumber" value="${phoneNumber}"></c:param>
                <c:param name="password" value="${password}"></c:param>
            </c:url>
    
    
            <a href="${Update}"><input type="submit" value="Edit profile" name="update"></a>
    
    
            <c:url value="Jsp/deleteAccount.jsp" var="delete">
                <c:param name="id" value="${id}"></c:param>
                <c:param name="fName" value="${fName}"></c:param>
                <c:param name="lName" value="${lName}"></c:param>
                <c:param name="email" value="${email}"></c:param>
                <c:param name="phoneNumber" value="${phoneNumber}"></c:param>
                <c:param name="password" value="${password}"></c:param>
            </c:url>
    
    
            <a href="${delete}"><input type="submit" value="Delete my account" name="delete"></a>
    
            <label for="" style="position:relative; top:380px;left:70px;font-weight: bold;">Log out</label>
            <a href="Home.jsp"><i class="fa-solid fa-right-from-bracket" id="logout"></i> </a>
            
            
        </div>

    </div>
    

</body>

</html>
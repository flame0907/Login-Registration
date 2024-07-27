<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="UTF-8"
 %>
<%@page import="jakarta.servlet.http.HttpSession" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome</title>
<link rel="stylesheet" type="text/css" href="index.css">
</head>
<body>

<%
// Retrieve the session obejct
HttpSession session1=request.getSession(false);

//check if the session is not null & the username attribute is set
if(session1 !=null && session1.getAttribute("username") !=null){

//get the username from the session
String username=(String) session.getAttribute("username");

%>
<div class="container">
    <h1>Welcome, <%= username %> !</h1>
    <p> We are delighted to have you on our platform </p>  
    <h3> Explore,learn & connect with our vibrant community</h3> 
    <p> Feel free to stay as long as you like and when you are ready </p>
    you can <a href="Logout.jsp">LOGOUT</a> securely.
</div>

<%
}else{
	// redirect to the login page if the user is not valid
	response.sendRedirect("Login.jsp");
}

%>

</body>
</html>
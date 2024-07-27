<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<div class="container">
 <h1>Register</h1>
 <form action="RegisterServlet1" method="post">
  <label for="username">Username:</label>
  <input type="text" id="username" name="username" required> <br>
  <label for="email">Email:</label>
  <input type="text" id="email" name="email" required> <br>
  <label for="password">Password:</label>
  <input type="text" id="password" name="password" required> <br>
  <button type="submit">Register</button>
 </form>
 
 <p> <a href="index.html">Back to Home</a>
 
 <%-- Display error message if registration fails --%>
        <% String error = request.getParameter("error");
           if (error != null && error.equals("1")) { %>
            <p style="color: red;">Registration failed. Please try again.</p>
        <% } %>
</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="UTF-8"
 %>
<%@page import="jakarta.servlet.http.HttpSession" %>

<!DOCTYPE html>
<html>

<body>

<%
// Retrieve the session obejct
HttpSession session2=request.getSession(false);

   if(session2 !=null)
   {
	   session2.invalidate();
   }

	// redirect to the login page 
	response.sendRedirect("index.html");


%>

</body>
</html>
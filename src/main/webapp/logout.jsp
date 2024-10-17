<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="jakarta.servlet.http.Cookie" %>
<%@ page import="jakarta.servlet.http.HttpServletRequest" %>
<%@ page import="jakarta.servlet.http.HttpServletResponse" %>
<!-- <!DOCTYPE html> -->
<!-- <html lang="en"> -->
<!-- <head> -->
<!--     <meta charset="UTF-8"> -->
<!--     <title>Logout</title> -->
<!-- </head> -->
<!-- <body> -->

<%
    // Get all cookies from the request
    Cookie[] cookies = request.getCookies();

    if (cookies != null) {
        for (Cookie cookie : cookies) {
            // Check if it's the "username" cookie
            if (cookie.getName().equals("username")) {
                // Set max age to 0 to delete the cookie
                cookie.setMaxAge(0);
                // Add the cookie back to the response to delete it
                response.addCookie(cookie);
                break; // Exit the loop after deleting the cookie
            }
        }
    }
    response.sendRedirect("index.jsp"); // Change this to your login page
%>

</body>
</html>

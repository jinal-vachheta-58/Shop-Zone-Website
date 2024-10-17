<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="project.connection" %>
<%@page import="java.sql.*" %>    
<%@page import="jakarta.servlet.http.Cookie" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>

<%
Connection con = null;
PreparedStatement ps = null;
try {
    con = project.connection.getcon();
    
    String proId = request.getParameter("pro_id");
    
    String query = "DELETE FROM cart WHERE pro_id = ? AND c_id = ?";  // Use customer session ID
    ps = con.prepareStatement(query);
    ps.setString(1, proId);
    ps.setInt(2, 1);  // Replace 1 with actual customer ID from session
    
    ps.executeUpdate();
} catch (SQLException e) {
    e.printStackTrace();
} finally {
    if (ps != null) ps.close();
    if (con != null) con.close();
}
%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="project.connection"%>
<%@page import="java.sql.*"%>
<%@page import="jakarta.servlet.http.HttpSession"%>

<%
    String email = request.getParameter("email");
    String password = request.getParameter("password");

    String emailError = "", passwordError = "";
    boolean hasError = false;

    // Regular expressions for validation
    String emailPattern = "^[^\\s@]+@[^\\s@]+\\.[^\\s@]+$";

    // Validate the fields if form is submitted
    if (request.getMethod().equalsIgnoreCase("POST")) {

        // Validate email
        if (email == null || email.isEmpty()) {
            emailError = "required.";
            hasError = true;
        } else if (!email.matches(emailPattern)) {
            emailError = "Invalid email format.";
            hasError = true;
        }

        // Validate password
        if (password == null || password.isEmpty()) {
            passwordError = "required.";
            hasError = true;
        } else if (password.length() < 3 || password.length() > 8) {
            passwordError = "Password must be 3-8 characters.";
            hasError = true;
        }

        // If no errors, proceed with login validation
        if (!hasError) {
            try {
                Connection con = connection.getcon();
                String sql = "SELECT dp_id, name, password FROM delivery_person WHERE email=?";
                PreparedStatement ps = con.prepareStatement(sql);
                ps.setString(1, email);
                ResultSet rs = ps.executeQuery();

                if (rs.next()) {
                    String dbpass = rs.getString("password");  // Get the plain-text password from DB
                    int dp_id = rs.getInt("dp_id");
                    String name = rs.getString("name");

                    // Compare plain-text passwords
                    if (password.equals(dbpass)) {
                        // If password is correct, set session attributes
                        HttpSession s = request.getSession();
                        s.setAttribute("dp_id", dp_id);
                        s.setAttribute("dp_name", name);
                        s.setAttribute("dp_email", email);
                        s.setAttribute("delivery_person_of_shop_zone", name);  // Setting this flag

                        // Redirect to delivery person's dashboard
                        response.sendRedirect("dp_dashboard.jsp");
                    } else {
                        passwordError = "Invalid email or password.";
                        hasError = true;
                    }
                } else {
                    passwordError = "Invalid email or password.";
                    hasError = true;
                }
            } catch (Exception e) {
                System.out.println("Error: " + e);
                response.sendRedirect("dp_login.jsp");
            }
        }
    }
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delivery Person - Login</title>
<style type="text/css">
@import url(https://fonts.googleapis.com/css?family=Roboto:300);

.login-page {
	width: 360px;
	padding: 8% 0 0;
	margin: auto;
}

.form {
	position: relative;
	z-index: 1;
	background: #FFFFFF;
	max-width: 360px;
	margin: 0 auto 100px;
	padding: 45px;
	text-align: center;
	box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0
		rgba(0, 0, 0, 0.24);
}

.form input {
	font-family: "Roboto", sans-serif;
	outline: 0;
	background: #f2f2f2;
	width: 100%;
	border: 0;
	margin: 0 0 15px;
	margin-bottom: 1px;
	margin-top: 10px;
	padding: 15px;
	box-sizing: border-box;
	font-size: 14px;
}

.form button {
	font-family: "Roboto", sans-serif;
	text-transform: uppercase;
	outline: 0;
	background: #4CAF50;
	width: 100%;
	border: 0;
	padding: 15px;
	color: #FFFFFF;
	font-size: 14px;
	-webkit-transition: all 0.3 ease;
	transition: all 0.3 ease;
	cursor: pointer;
}

.form button:hover, .form button:active, .form button:focus {
	background: #43A047;
}

.form .message {
	margin: 15px 0 0;
	color: #b3b3b3;
	font-size: 12px;
}

.form .message a {
	color: #4CAF50;
	text-decoration: none;
}

.error {
	color: red;
	text-align: left;
	margin-bottom: 20px;
	margin-left: 0px;
}

body {
	font-family: "Roboto", sans-serif;
	-webkit-font-smoothing: antialiased;
	-moz-osx-font-smoothing: grayscale;
	background-color: #f5f5f5;
}
</style>
</head>
<body>

	<div class="login-page">
		<div class="form">
			<form class="login-form" action="dp_login.jsp" method="POST">
				<h1>DELIVERY PERSON LOGIN</h1>

				<input type="email" placeholder="email" name="email"
					value="<%= email != null ? email : "" %>" autocomplete="off" /> <span
					class="error">*<%= emailError %></span> <input type="password"
					placeholder="password" name="password" autocomplete="off" /> <span
					class="error">*<%= passwordError %></span>

				<button type="submit" class="l-b">Login</button>

			</form>
		</div>
	</div>

</body>
</html>
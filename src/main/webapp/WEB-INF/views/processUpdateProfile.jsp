<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.naming.InitialContext" %>
<%@ page import="javax.naming.Context" %>
<%@ page import="javax.sql.DataSource" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Profile - Process</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
            background-color: #f4f4f4;
        }
        .content {
            max-width: 600px;
            margin: auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h1 {
            color: #333;
            text-align: center;
        }
        .message {
            text-align: center;
            margin-top: 20px;
            font-size: 16px;
            color: #27ae60; /* Success color */
        }
        .error {
            text-align: center;
            margin-top: 20px;
            font-size: 16px;
            color: #e74c3c; /* Error color */
        }
    </style>
</head>
<body>
    <div class="content">
        <h1>Profile Update Result</h1>

        <%
            String username = request.getParameter("username");
            String email = request.getParameter("email");
            String phone = request.getParameter("phone");
            String password = request.getParameter("password");
            String confirmPassword = request.getParameter("confirmPassword");

            // Simple validation
            if (username == null || email == null || (password != null && !password.equals(confirmPassword))) {
                out.println("<div class='error'>");
                out.println("Error: Please fill in all required fields correctly.");
                out.println("</div>");
            } else {
                Connection conn = null;
                PreparedStatement stmt = null;
                try {
                    // Database connection (Adjust DataSource based on your configuration)
                    Context ctx = new InitialContext();
                    DataSource ds = (DataSource) ctx.lookup("java:comp/env/jdbc/YourDataSource");
                    conn = ds.getConnection();

                    // Update profile in the database
                    String sql = "UPDATE users SET email=?, phone=?, password=? WHERE username=?";
                    stmt = conn.prepareStatement(sql);
                    stmt.setString(1, email);
                    stmt.setString(2, phone);
                    if (password != null && !password.isEmpty()) {
                        // Hash the password before storing (consider using a hashing library)
                        stmt.setString(3, password); // Only update password if provided
                    } else {
                        stmt.setNull(3, Types.VARCHAR); // Do not update if no password is provided
                    }
                    stmt.setString(4, username);
                    int rowsUpdated = stmt.executeUpdate();

                    if (rowsUpdated > 0) {
                        out.println("<div class='message'>");
                        out.println("Your profile has been updated successfully.");
                        out.println("</div>");
                    } else {
                        out.println("<div class='error'>");
                        out.println("Error: No profile found for the given username.");
                        out.println("</div>");
                    }
                } catch (Exception e) {
                    out.println("<div class='error'>");
                    out.println("Error: " + e.getMessage());
                    out.println("</div>");
                } finally {
                    // Close resources
                    if (stmt != null) {
                        try { stmt.close(); } catch (SQLException e) { /* Ignore */ }
                    }
                    if (conn != null) {
                        try { conn.close(); } catch (SQLException e) { /* Ignore */ }
                    }
                }
            }
        %>
        <div>
            <a href="/updateProfile">Back to Update Profile</a>
        </div>
    </div>
</body>
</html>

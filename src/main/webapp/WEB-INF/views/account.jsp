<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Account</title>
    <style>
        /* General Styles */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }

        /* Main Container */
        .account-container {
            max-width: 800px;
            margin: 40px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h1 {
            color: #333;
            text-align: center;
            margin-bottom: 20px;
        }

        /* Account Section */
        .account-section {
            margin-bottom: 20px;
        }

        .account-section h2 {
            color: #555;
            border-bottom: 1px solid #ddd;
            padding-bottom: 5px;
        }

        .account-section p {
            line-height: 1.6;
        }
    </style>
</head>
<body>

    <%@ include file="mainnavbar.jsp" %>

    <div class="account-container">
        <h1>Your Account</h1>

        <!-- Profile Section -->
        <div class="account-section">
            <h2>Profile Information</h2>
            <p><strong>Name:</strong> John Doe</p>
            <p><strong>Email:</strong> johndoe@example.com</p>
            <p><a href="/updateProfile">Edit Profile</a></p>
        </div>

        <!-- Order History Section -->
        <div class="account-section">
            <h2>Order History</h2>
            <p>No orders yet. <a href="/products">Browse Products</a></p>
        </div>

        <!-- Account Settings Section -->
        <div class="account-section">
            <h2>Account Settings</h2>
            <p><a href="/changePassword">Change Password</a></p>
            <p><a href="/logout">Logout</a></p>
        </div>
    </div>

</body>
</html>

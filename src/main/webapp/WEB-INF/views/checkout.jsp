<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Payment</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }

        .navbar {
            background-color: #333;
            color: #fff;
            padding: 15px;
            text-align: center;
        }

        .navbar a {
            color: white;
            text-decoration: none;
            padding: 14px 20px;
        }

        .navbar a:hover {
            background-color: #575757;
        }

        .content {
            max-width: 600px;
            margin: 40px auto;
            padding: 20px;
            background-color: #ffffff;
            border: 1px solid #ddd;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h1 {
            color: #333;
            text-align: center;
        }

        .form-group {
            margin-bottom: 15px;
        }

        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }

        input[type="text"],
        input[type="number"],
        input[type="email"],
        input[type="tel"],
        select {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            background-color: #27ae60;
            color: white;
            border: none;
            padding: 10px;
            cursor: pointer;
            font-size: 16px;
            border-radius: 5px;
            width: 100%;
        }

        input[type="submit"]:hover {
            background-color: #219653;
        }

        .footer {
            text-align: center;
            margin-top: 20px;
            font-size: 14px;
            color: #666;
        }
    </style>
</head>
<body>
<%@ include file="mainnavbar.jsp" %> <!-- Include your navigation bar here -->
    <div class="content">
        <h1>Payment Information</h1>
        <form action="processPayment.jsp" method="post"> <!-- Adjust action to your processing page -->
            <div class="form-group">
                <label for="name">Cardholder Name</label>
                <input type="text" id="name" name="name" required>
            </div>

            <div class="form-group">
                <label for="cardNumber">Card Number</label>
                <input type="number" id="cardNumber" name="cardNumber" required>
            </div>

            <div class="form-group">
                <label for="expiryDate">Expiry Date (MM/YY)</label>
                <input type="text" id="expiryDate" name="expiryDate" placeholder="MM/YY" required>
            </div>

            <div class="form-group">
                <label for="cvv">CVV</label>
                <input type="number" id="cvv" name="cvv" required>
            </div>

            <div class="form-group">
                <label for="billingAddress">Billing Address</label>
                <input type="text" id="billingAddress" name="billingAddress" required>
            </div>

            <div class="form-group">
                <label for="email">Email Address</label>
                <input type="email" id="email" name="email" required>
            </div>

            <input type="submit" value="Pay Now">
            <button class="btn btn-sucess"><a href="/cart">back to cart</a></button>
        </form>
    </div>

    <div class="footer">
        <p>&copy; 2024 Your E-Commerce Site. All Rights Reserved.</p>
    </div>
</body>
</html>

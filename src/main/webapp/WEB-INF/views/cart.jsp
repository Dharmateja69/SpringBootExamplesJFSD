<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Shopping Cart</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }

        .content {
            max-width: 1000px;
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

        .cart-item {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 10px;
            border-bottom: 1px solid #ddd;
        }

        .cart-item img {
            width: 80px;
            height: auto;
            margin-right: 20px;
        }

        .cart-item-details {
            flex-grow: 1;
        }

        .cart-item-price {
            font-weight: bold;
            color: #e74c3c;
        }

        .cart-summary {
            margin-top: 20px;
            padding: 10px;
            background-color: #f9f9f9;
            border: 1px solid #ddd;
            border-radius: 5px;
        }

        .summary-total {
            font-size: 20px;
            font-weight: bold;
            color: #333;
        }

        .checkout-button {
            display: block;
            width: 100%;
            padding: 10px;
            margin-top: 20px;
            background-color: #27ae60;
            color: white;
            text-align: center;
            text-decoration: none;
            border-radius: 5px;
        }

        .checkout-button:hover {
            background-color: #219653;
        }
    </style>
</head>
<body>
<%@ include file="mainnavbar.jsp" %> <!-- Make sure this line uses correct syntax -->
    <div class="content">
        <h1>Your Shopping Cart</h1>

        <div class="cart-item">
            <img src="path/to/image1.jpg" alt="Product Image">
            <div class="cart-item-details">
                <h2>Product Name 1</h2>
                <p>Quantity: 1</p>
                <p class="cart-item-price">$20.00</p>
            </div>
            <button>Remove</button>
        </div>

        <div class="cart-item">
            <img src="path/to/image2.jpg" alt="Product Image">
            <div class="cart-item-details">
                <h2>Product Name 2</h2>
                <p>Quantity: 2</p>
                <p class="cart-item-price">$30.00</p>
            </div>
            <button>Remove</button>
        </div>

        <div class="cart-summary">
            <h2>Cart Summary</h2>
            <p class="summary-total">Total: $80.00</p>
            <a href="/checkout" class="checkout-button">Proceed to Checkout</a>
        </div>
    </div>

</body>
</html>

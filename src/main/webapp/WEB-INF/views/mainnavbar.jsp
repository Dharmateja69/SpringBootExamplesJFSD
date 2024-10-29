<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Navbar</title>
    <style>
        /* Basic Reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
        }

        /* Navbar Styling */
        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: #333;
            padding: 10px 20px;
        }

        .navbar-logo {
            font-size: 24px;
            color: #fff;
            font-weight: bold;
            text-decoration: none;
        }

        .navbar-menu {
            display: flex;
            align-items: center;
        }

        .navbar-menu a {
            color: #fff;
            text-decoration: none;
            padding: 8px 15px;
            transition: background-color 0.3s;
        }

        .navbar-menu a:hover {
            background-color: #555;
            border-radius: 5px;
        }

        .navbar-search {
            position: relative;
        }

        .navbar-search input[type="text"] {
            padding: 8px;
            border: none;
            border-radius: 5px;
        }

        .navbar-search button {
            position: absolute;
            right: 2px;
            top: 50%;
            transform: translateY(-50%);
            padding: 8px 10px;
            background-color: #ff6a00;
            border: none;
            color: #fff;
            border-radius: 5px;
            cursor: pointer;
        }

        .navbar-icons a {
            color: #fff;
            padding: 8px 10px;
            text-decoration: none;
            display: flex;
            align-items: center;
            transition: color 0.3s;
        }

        .navbar-icons a:hover {
            color: #ff6a00;
        }

        .navbar-icons .cart-icon {
            position: relative;
        }

        .navbar-icons .cart-icon::after {
            content: "3"; /* Example item count */
            position: absolute;
            top: -5px;
            right: -10px;
            background-color: #ff6a00;
            color: #fff;
            border-radius: 50%;
            padding: 2px 5px;
            font-size: 12px;
        }
    </style>
</head>
<body>
    <div class="navbar">
        <!-- Logo -->
        <a href="/" class="navbar-logo">E-Shop</a>

        <!-- Navbar Links -->
        <div class="navbar-menu">
            <a href="/">Home</a>
            <a href="/products">Products</a>
            <a href="/categories">Categories</a>
            <a href="/deals">Deals</a>
            <a href="/contact">Contact Us</a>
        </div>

        <!-- Search Bar -->
        <div class="navbar-search">
            <input type="text" placeholder="Search for products">
            <button>Search</button>
        </div>

        <!-- Icons for Account and Cart -->
        <div class="navbar-icons">
            <a href="/account">Account</a>
            <a href="/cart" class="cart-icon">Cart</a>
        </div>
    </div>
</body>
</html>

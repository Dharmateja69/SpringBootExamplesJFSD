<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Home - E-Commerce</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }
        header {
            background-color: #343a40;
            color: white;
            padding: 10px 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .logo {
            font-size: 24px;
            font-weight: bold;
        }
        nav ul {
            list-style: none;
            display: flex;
            margin: 0;
            padding: 0;
        }
        nav ul li {
            margin: 0 15px;
        }
        nav ul li a {
            color: white;
            text-decoration: none;
        }
        .search-container {
            display: flex;
            align-items: center;
        }
        .search-container input {
            padding: 5px;
            border: none;
            border-radius: 5px;
        }
        .search-container button {
            padding: 5px 10px;
            border: none;
            background-color: #28a745;
            color: white;
            border-radius: 5px;
            cursor: pointer;
        }
        .banner {
            background-image: url('https://via.placeholder.com/1200x300');
            background-size: cover;
            height: 300px;
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            font-size: 36px;
            font-weight: bold;
        }
        .container {
            padding: 20px;
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
        }
        .product {
            border: 1px solid #ddd;
            border-radius: 5px;
            width: 200px;
            margin: 15px;
            padding: 10px;
            text-align: center;
            transition: box-shadow 0.3s;
        }
        .product img {
            width: 100%;
            height: auto;
            border-radius: 5px;
        }
        .product h3 {
            font-size: 18px;
            margin: 10px 0;
        }
        .product p {
            color: #28a745;
            font-size: 16px;
            margin: 5px 0;
        }
        .product button {
            padding: 10px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        footer {
            background-color: #343a40;
            color: white;
            text-align: center;
            padding: 15px 0;
            position: relative;
            bottom: 0;
            width: 100%;
        }
    </style>
</head>
<body>

<header>
    <div class="logo">E-Shop</div>
    <nav>
        <ul>
            <li><a href="#">Home</a></li>
            <li><a href="#">Products</a></li>
            <li><a href="#">Contact</a></li>
            <li><a href="#">About</a></li>
        </ul>
    </nav>
    <div class="search-container">
        <input type="text" placeholder="Search...">
        <button type="submit">Search</button>
    </div>
</header>

<div class="banner">
    Welcome to E-Shop
</div>

<div class="container">
    <div class="product">
        <img src="https://via.placeholder.com/200" alt="Product 1">
        <h3>Product 1</h3>
        <p>$29.99</p>
        <button>Add to Cart</button>
    </div>
    <div class="product">
        <img src="https://via.placeholder.com/200" alt="Product 2">
        <h3>Product 2</h3>
        <p>$39.99</p>
        <button>Add to Cart</button>
    </div>
    <div class="product">
        <img src="https://via.placeholder.com/200" alt="Product 3">
        <h3>Product 3</h3>
        <p>$19.99</p>
        <button>Add to Cart</button>
    </div>
    <div class="product">
        <img src="https://via.placeholder.com/200" alt="Product 4">
        <h3>Product 4</h3>
        <p>$49.99</p>
        <button>Add to Cart</button>
    </div>
</div>

<footer>
    &copy; 2024 E-Shop. All rights reserved.
</footer>

</body>
</html>

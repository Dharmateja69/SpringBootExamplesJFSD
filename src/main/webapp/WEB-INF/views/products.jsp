<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Products - E-Shop</title>
    <style>
        /* General Styles */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }

        /* Section Container */
        .section {
            padding: 40px 20px;
            max-width: 1200px;
            margin: auto;
        }

        /* Product Grid */
        .product-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 20px;
        }

        /* Individual Product Card */
        .product {
            background-color: #fff;
            padding: 15px;
            border: 1px solid #ddd;
            border-radius: 5px;
            text-align: center;
            transition: box-shadow 0.3s;
        }

        .product:hover {
            box-shadow: 0px 4px 12px rgba(0, 0, 0, 0.1);
        }

        .product img {
            max-width: 100%;
            height: auto;
            border-radius: 5px;
        }

        .product h3 {
            font-size: 18px;
            margin: 15px 0 5px;
            color: #333;
        }

        .product p {
            color: #666;
            margin-bottom: 10px;
        }

        .product button {
            padding: 8px 12px;
            font-size: 16px;
            color: #fff;
            background-color: #ff6a00;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .product button:hover {
            background-color: #ff4500;
        }
    </style>
</head>
<body>

    <%@ include file="mainnavbar.jsp" %>

    <!-- Product Listing Section -->
    <section class="section">
        <h2>Our Products</h2>
        <div class="product-grid">
            <div class="product">
                <img src="images/product1.jpg" alt="Product 1">
                <h3>Product 1</h3>
                <p>$19.99</p>
                <button>Add to Cart</button>
            </div>
            <div class="product">
                <img src="images/product2.jpg" alt="Product 2">
                <h3>Product 2</h3>
                <p>$29.99</p>
                <button>Add to Cart</button>
            </div>
            <div class="product">
                <img src="images/product3.jpg" alt="Product 3">
                <h3>Product 3</h3>
                <p>$39.99</p>
                <button>Add to Cart</button>
            </div>
            <div class="product">
                <img src="images/product4.jpg" alt="Product 4">
                <h3>Product 4</h3>
                <p>$49.99</p>
                <button>Add to Cart</button>
            </div>
            <!-- Add more products as needed -->
        </div>
    </section>

</body>
</html>

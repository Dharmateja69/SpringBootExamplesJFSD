<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Home - E-Shop</title>
    <style>
        /* General Styles */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }

        /* Hero Banner */
        .hero {
            background-image: url('images/banner.jpg'); /* Replace with your image path */
            background-size: cover;
            background-position: center;
            height: 400px;
            color: #fff;
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
        }

        .hero h1 {
            font-size: 48px;
            margin-bottom: 10px;
        }

        .hero p {
            font-size: 24px;
            margin-bottom: 20px;
        }

        .hero button {
            padding: 10px 20px;
            font-size: 18px;
            color: #fff;
            background-color: #ff6a00;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .hero button:hover {
            background-color: #ff4500;
        }

        /* Featured Products Carousel */
        .carousel {
            position: relative;
            max-width: 1200px;
            margin: auto;
            overflow: hidden;
        }

        .carousel-inner {
            display: flex;
            transition: transform 0.5s ease;
        }

        .carousel-item {
            min-width: 100%;
            box-sizing: border-box;
            display: flex;
            justify-content: center;
        }

        .product {
            background-color: #fff;
            padding: 15px;
            border: 1px solid #ddd;
            border-radius: 5px;
            text-align: center;
            transition: box-shadow 0.3s;
            margin: 10px;
            flex: 0 0 auto; /* Prevent flex items from shrinking */
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

        /* Navigation Buttons */
        .carousel-button {
            position: absolute;
            top: 50%;
            transform: translateY(-50%);
            background-color: rgba(0, 0, 0, 0.5);
            color: white;
            border: none;
            padding: 10px;
            cursor: pointer;
            border-radius: 5px;
        }

        .carousel-button.left {
            left: 10px;
        }

        .carousel-button.right {
            right: 10px;
        }
    </style>
</head>
<body>

    <%@ include file="mainnavbar.jsp" %>

    <!-- Hero Banner -->
    <section class="hero">
        <div>
            <h1>Welcome to E-Shop!</h1>
            <p>Your one-stop shop for all things amazing.</p>
            <button onclick="window.location.href='/products'">Shop Now</button>
        </div>
    </section>

    <!-- Featured Products Carousel -->
    <section class="section">
        <h2>Featured Products</h2>
        <div class="carousel">
            <div class="carousel-inner" id="carouselInner">
                <div class="carousel-item">
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
                </div>
                <div class="carousel-item">
                    <div class="product">
                        <img src="images/product5.jpg" alt="Product 5">
                        <h3>Product 5</h3>
                        <p>$59.99</p>
                        <button>Add to Cart</button>
                    </div>
                    <div class="product">
                        <img src="images/product6.jpg" alt="Product 6">
                        <h3>Product 6</h3>
                        <p>$69.99</p>
                        <button>Add to Cart</button>
                    </div>
                    <div class="product">
                        <img src="images/product7.jpg" alt="Product 7">
                        <h3>Product 7</h3>
                        <p>$79.99</p>
                        <button>Add to Cart</button>
                    </div>
                    <div class="product">
                        <img src="images/product8.jpg" alt="Product 8">
                        <h3>Product 8</h3>
                        <p>$89.99</p>
                        <button>Add to Cart</button>
                    </div>
                </div>
                <div class="carousel-item">
                    <div class="product">
                        <img src="images/product9.jpg" alt="Product 9">
                        <h3>Product 9</h3>
                        <p>$99.99</p>
                        <button>Add to Cart</button>
                    </div>
                    <div class="product">
                        <img src="images/product10.jpg" alt="Product 10">
                        <h3>Product 10</h3>
                        <p>$109.99</p>
                        <button>Add to Cart</button>
                    </div>
                </div>
            </div>
            <button class="carousel-button left" onclick="prevSlide()">&#10094;</button>
            <button class="carousel-button right" onclick="nextSlide()">&#10095;</button>
        </div>
    </section>

    <script>
        let currentSlide = 0;
        const totalSlides = document.querySelectorAll('.carousel-item').length;

        function showSlide(index) {
            const slides = document.querySelectorAll('.carousel-item');

            // Ensure the index is within bounds
            if (index < 0) {
                currentSlide = totalSlides - 1;
            } else if (index >= totalSlides) {
                currentSlide = 0;
            } else {
                currentSlide = index;
            }

            const offset = -currentSlide * 100; // Slide width is 100%
            document.getElementById('carouselInner').style.transform = `translateX(${offset}%)`;
        }

        function nextSlide() {
            showSlide(currentSlide + 1);
        }

        function prevSlide() {
            showSlide(currentSlide - 1);
        }

        // Automatic slide every 3 seconds
        setInterval(nextSlide, 2000);

    </script>
</body>
</html>

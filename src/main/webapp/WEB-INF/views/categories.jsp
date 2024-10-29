<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Categories - E-Shop</title>
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

        /* Categories Grid */
        .category-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 20px;
        }

        /* Individual Category Card */
        .category {
            background-color: #fff;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 5px;
            text-align: center;
            transition: box-shadow 0.3s;
            cursor: pointer;
        }

        .category:hover {
            box-shadow: 0px 4px 12px rgba(0, 0, 0, 0.1);
        }

        .category img {
            max-width: 100%;
            height: auto;
            border-radius: 5px;
            margin-bottom: 15px;
        }

        .category h3 {
            font-size: 18px;
            color: #333;
        }
    </style>
</head>
<body>

    <%@ include file="mainnavbar.jsp" %>

    <!-- Categories Section -->
    <section class="section">
        <h2>Shop by Categories</h2>
        <div class="category-grid">
            <div class="category">
                <img src="images/electronics.jpg" alt="Electronics">
                <h3>Electronics</h3>
            </div>
            <div class="category">
                <img src="images/fashion.jpg" alt="Fashion">
                <h3>Fashion</h3>
            </div>
            <div class="category">
                <img src="images/home.jpg" alt="Home & Kitchen">
                <h3>Home & Kitchen</h3>
            </div>
            <div class="category">
                <img src="images/beauty.jpg" alt="Beauty & Health">
                <h3>Beauty & Health</h3>
            </div>
            <div class="category">
                <img src="images/sports.jpg" alt="Sports & Outdoors">
                <h3>Sports & Outdoors</h3>
            </div>
            <!-- Add more categories as needed -->
        </div>
    </section>

</body>
</html>

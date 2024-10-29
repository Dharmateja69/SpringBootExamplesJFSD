<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Deals - E-Shop</title>
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

        /* Deals Grid */
        .deal-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 20px;
        }

        /* Individual Deal Card */
        .deal {
            background-color: #fff;
            padding: 15px;
            border: 1px solid #ddd;
            border-radius: 5px;
            text-align: center;
            transition: box-shadow 0.3s;
        }

        .deal:hover {
            box-shadow: 0px 4px 12px rgba(0, 0, 0, 0.1);
        }

        .deal img {
            max-width: 100%;
            height: auto;
            border-radius: 5px;
        }

        .deal h3 {
            font-size: 18px;
            margin: 15px 0 5px;
            color: #333;
        }

        .deal .price {
            font-size: 16px;
            color: #ff6a00;
            margin: 10px 0;
        }

        .deal .original-price {
            text-decoration: line-through;
            color: #888;
            font-size: 14px;
        }

        .deal button {
            padding: 8px 12px;
            font-size: 16px;
            color: #fff;
            background-color: #ff6a00;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .deal button:hover {
            background-color: #ff4500;
        }
    </style>
</head>
<body>

    <%@ include file="mainnavbar.jsp" %>

    <!-- Deals Section -->
    <section class="section">
        <h2>Special Deals</h2>
        <div class="deal-grid">
            <div class="deal">
                <img src="images/deal1.jpg" alt="Deal 1">
                <h3>Deal 1</h3>
                <p class="price">$14.99 <span class="original-price">$29.99</span></p>
                <button>View Deal</button>
            </div>
            <div class="deal">
                <img src="images/deal2.jpg" alt="Deal 2">
                <h3>Deal 2</h3>
                <p class="price">$24.99 <span class="original-price">$49.99</span></p>
                <button>View Deal</button>
            </div>
            <div class="deal">
                <img src="images/deal3.jpg" alt="Deal 3">
                <h3>Deal 3</h3>
                <p class="price">$34.99 <span class="original-price">$69.99</span></p>
                <button>View Deal</button>
            </div>
            <div class="deal">
                <img src="images/deal4.jpg" alt="Deal 4">
                <h3>Deal 4</h3>
                <p class="price">$44.99 <span class="original-price">$89.99</span></p>
                <button>View Deal</button>
            </div>
            <!-- Add more deals as needed -->
        </div>
    </section>

</body>
</html>

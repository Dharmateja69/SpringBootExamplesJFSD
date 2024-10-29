<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Contact Us - E-Shop</title>
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
            max-width: 800px;
            margin: auto;
        }

        /* Contact Form Styles */
        .contact-form {
            background-color: #fff;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 5px;
        }

        .contact-form h2 {
            font-size: 24px;
            margin-bottom: 20px;
            color: #333;
        }

        .contact-form label {
            display: block;
            margin: 10px 0 5px;
            font-weight: bold;
        }

        .contact-form input,
        .contact-form textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 16px;
        }

        .contact-form button {
            padding: 10px 20px;
            font-size: 18px;
            color: #fff;
            background-color: #ff6a00;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .contact-form button:hover {
            background-color: #ff4500;
        }
    </style>
</head>
<body>

    <%@ include file="mainnavbar.jsp" %>

    <!-- Contact Us Section -->
    <section class="section">
        <div class="contact-form">
            <h2>Contact Us</h2>
            <form action="/sendContact" method="post">
                <label for="name">Your Name</label>
                <input type="text" id="name" name="name" required>
                
                <label for="email">Your Email</label>
                <input type="email" id="email" name="email" required>
                
                <label for="message">Your Message</label>
                <textarea id="message" name="message" rows="5" required></textarea>
                
                <button type="submit">Send Message</button>
            </form>
        </div>
    </section>

</body>
</html>

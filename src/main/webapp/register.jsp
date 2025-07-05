<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Register</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootswatch@4.5.2/dist/lux/bootstrap.min.css" integrity="sha384-9+PGKSqjRdkeAU7Eu4nkJU8RFaH8ace8HGXnkiKMP9I9Te0GJ4/km3L1Z8tXigpG" crossorigin="anonymous">
<style type="text/css">
    body {
        background-color: black;
    }

    .slide-in-images img {
        width: 488px; 
        height: auto; 
        position: absolute;
        top: 0;
        left: 0;
        opacity: 0;
        transition: opacity 1s ease, transform 1s ease, box-shadow 0.5s ease;
        animation: slideIn 2s forwards;
        border-radius: 20px;
    }

    @keyframes slideIn {
        0% {
            transform: translateX(-100%);
            opacity: 0;
        }
        100% {
            transform: translateX(0);
            opacity: 1;
        }
    }

    .slide-in-images img:nth-child(2) {
        animation-delay: 1s;
    }

    .slide-in-images img:nth-child(3) {
        animation-delay: 2s;
    }

    .slide-in-images img:nth-child(4) {
        animation-delay: 3s;
    }

    .slide-in-images img:nth-child(5) {
        animation-delay: 4s;
    }

    .slide-in-images img:nth-child(6) {
        animation-delay: 5s;
    }

    .slide-in-images img:hover {
        transform: scale(1.05);
        box-shadow: 0 0 10px 5px white;
    }

    .register-form {
        padding: 20px;
        background-color: white;
        border-radius: 10px;
        opacity: 1;
        transition: opacity 0.5s ease, transform 0.5s ease;
        animation: slideInForm 1s forwards;
    }

    .register-form:hover {
        transform: scale(1.05);
    }

    .form-group {
        margin-bottom: 20px;
    }

    .btn-primary {
        width: 100%;
    }

    a {
        color: #007bff;
        text-decoration: none;
    }

    a:hover {
        text-decoration: underline;
    }

    header {
        text-align: center;
        margin-bottom: 20px;
    }

     header h1 {
        color: white;
        transition: transform 0.3s ease;
    }

    header h1:hover {
        transform: scale(1.1);
    }

</style>

</head>
<body>
<div class="container">
    <header>
        <h1>Access Your Marketplace</h1>
    </header>
    <div class="row">
        <div class="col-md-6 d-flex align-items-center justify-content-center slide-in-images">
            <img src="5.jpg" alt="Image 1">
            <img src="c.jpg" alt="Image 2">
            <img src="a.jpg" alt="Image 3">
            <img src="b.jpg" alt="Image 2">
                        <img src="6.jpg" alt="Image 3">
            
        </div>
      
        <div class="col-md-6 d-flex align-items-center justify-content-center register-form">
            <div class="register-form">
                <h2 class="mb-4">Register to Buy and Sell</h2>
<form action="register" method="post">
                    <div class="form-group">
                        <label for="full_name">Full Name</label>
                        <input type="text" class="form-control" id="full_name" name="full_name" placeholder="Enter your full name" required>
                    </div>

                    <div class="form-group">
                        <label for="email">Email</label>
                        <input type="email" class="form-control" id="email" name="email" placeholder="Enter your email" required>
                    </div>

                    <div class="form-group">
                        <label for="password">Password</label>
                        <input type="password" class="form-control" id="password" name="password" placeholder="Enter your password" required>
                        <small id="passwordHelp" class="form-text text-muted">Password must be at least 8 characters long and contain at least one uppercase letter, one lowercase letter, one number, and one special character.</small>
                    </div>

                    <div class="form-group">
                        <label for="repeat_password">Repeat Password</label>
                        <input type="password" class="form-control" id="repeat_password" name="repeat_password" placeholder="Repeat your password" required>
                    </div>
                    
                    <div class="form-group form-check">
                        <input type="checkbox" class="form-check-input" id="terms_checkbox" required>
                        <label class="form-check-label" for="terms_checkbox">I agree to the <a href="#">terms of service</a> and <a href="#">privacy policy</a>.</label>
                    </div>
                    
                    <button type="submit" name="submit" class="btn btn-primary">Register</button>
                           <div>
            <p>Already have an account? <a href="login.jsp">Sign in here</a></p>
                                      <p>You're an admin? <a href="login1.jsp">login here</a></p>
            
        </div> 
                </form> 
            </div>
        </div>
    </div>
    <div>
     
    </div>
</div>

</body>
</html>
                    
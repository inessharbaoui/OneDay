<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login</title>
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

        .login-form {
            padding: 20px;
            background-color: white;
            border-radius: 10px;
            opacity: 1;
            transition: opacity 0.5s ease, transform 0.5s ease;
            animation: slideInForm 1s forwards;
        }

        .login-form:hover {
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

        .hearts {
            display: inline-block;
            font-size: 24px;
            color: #ff0000; /* Red color */
            cursor: pointer;
            margin-bottom: 10px;
        }

        .hearts:hover {
            transform: scale(1.2);
        }
    </style>
</head>
<body onload="playVideo()">
    <div class="container">
        <header>
            <h1>Login to Access Your Marketplace</h1>
        </header>
        <div class="row">
            <div class="col-md-6 d-flex align-items-center justify-content-center slide-in-images">
                <img src="5.jpg" alt="Image 1">
                <img src="c.jpg" alt="Image 2">
                <img src="a.jpg" alt="Image 3">
                <img src="b.jpg" alt="Image 2">
                <img src="6.jpg" alt="Image 3">
            </div>
          
            <div class="col-md-6 d-flex align-items-center justify-content-center login-form">
            
                <div class="login-form">
                    <h2 class="mb-4">Welcome to</h2>
                    <form action="login" method="post">
                     <img src="kip.png" alt="Image 3">
                        <div class="form-group">
                            <label for="email">Email</label>
                            <input type="email" class="form-control" id="email" name="email" placeholder="Enter your email" required>
                        </div>

                        <div class="form-group">
                            <label for="password">Password</label>
                            <input type="password" class="form-control" id="password" name="password" placeholder="Enter your password" required>
                        </div>
                        
                        <button type="submit" class="btn btn-primary">Login</button>
                        <div>
                            <p>Don't have an account? <a href="register.jsp">Sign up here</a></p>
                          <p>You're an admin? <a href="login1.jsp">login here</a></p>
                            
                        </div>  
                    
                    </form> 
                </div>
            </div>
        </div>
    </div>

</body>
</html>

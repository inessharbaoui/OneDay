<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>OneDay - Online Marketplace</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootswatch@4.5.2/dist/lux/bootstrap.min.css" integrity="sha384-9+PGKSqjRdkeAU7Eu4nkJU8RFaH8ace8HGXnkiKMP9I9Te0GJ4/km3L1Z8tXigpG" crossorigin="anonymous">
    <style>
        .sell-button {
            position: fixed;
            bottom: 20px;
            right: 20px;  
            z-index: 1000; 
        }
 
        .sell-button a {
            display: block;
            padding: 10px 20px;
            background-color: black; 
            color: #fff;
            text-align: center;
            text-decoration: none;
            border-radius: 5px;
        }

        .sell-button a:hover {
            background-color: #0056b3; 
        }
        
        .navbar-sticky {
            position: fixed;
            top: 0;
            width: 100%;
            z-index: 1000;
        }

        .navbar-brand img {
            height: 60px; 
            border-radius: 10px;  
            overflow: hidden; 
            margin-right: 15px; 
        }

        .navbar-brand span {
            font-size: 32px; 
            font-weight: bold; 
        }
           .card-img-top {
        height: 500px;
        object-fit: cover;  
    }
    
    
         /* Sticky card */
        .floating-card {
            position: fixed;
            top: 20px;
            right: 20px;
            width: 300px;
            padding: 20px;
            background-color: #fff;
            border: 1px solid #ccc;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            z-index: 1000;
        }
  .navbar-sticky + .floating-card {
            top: 70px; 
        }
  .floating-card {
            display: none;
        }

        .cart-item {
            margin-bottom: 10px;
        }
        
        
        .pay-button {
    background-color: black;  
    color: #fff;  
    border-radius: 10px;  
    padding: 10px 20px;  
    border: none; 
}
    .nav-link1 {
        color: black; 
        text-decoration: none; 
        margin-right: 10px;  
    }
    .nav-link1:hover {
        text-decoration: underline; 
    }





     footer {
            background-color: light; 
            color:black; 
            padding: 20px 0; 
        }

        .footer-content {
            max-width: 1200px; 
            margin: 0 auto; 
            display: flex;
            justify-content: space-between; 
            flex-wrap: wrap; 
        }

        .footer-content h3 {
            margin-bottom: 10px; 
        }

        .footer-content p,
        .footer-content ul {
            margin: 0;
            padding: 0; 
        }

        .company-info,
        .contact-info,
        .quick-links {
            flex: 1; 
            margin-right: 20px;
        }

        .quick-links ul {
            list-style: none;
        }

        .quick-links ul li {
            margin-bottom: 5px; 
        }

        .quick-links ul li a {
            color: #ccc;
            text-decoration: none; 
            transition: color 0.3s;
        }

        .quick-links ul li a:hover {
            color: #fff; 
        }

        .copyright {
            text-align: center; 
            margin-top: 20px;
        }
        
        
  .partner-image {
            width: 100%; 
            height: auto; 
        }

    </style>
    
    
    <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light navbar-sticky">
        <a class="navbar-brand" href="main.jsp">OneDay Company</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="main.jsp">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="guidelines.jsp">Guidelines</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="partnership.jsp">Become a Partner</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Logout">Logout</a>
                </li>
            </ul>
        </div>
    </nav>
       <div class="floating-card" id="cart-card">
        <h4>Shopping Cart</h4>
        <div id="cart-items">
        </div>
        <hr>
        <div id="cart-total">
            Total: DT0.00 
        </div>
<button type="button" class="btn btn-primary" onclick="proceedToPay()">Proceed to Pay</button>
        
                        <a  href=# class="nav-link" onclick="cancel()">cancel</a>
        
    </div>
    
 <h1>Product List</h1>
  <h1>Product List</h1>
  
  
 
<%
try {
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sell", "root", "");
    Statement stmt = conn.createStatement();
    ResultSet rs = stmt.executeQuery("SELECT * FROM products");

    int count = 0;
    
    // Array of partner image URLs
    String[] partnerImages = {"hal.jpg", "zz.jpg", "in.jpg", "zz.jpg", "in5.jpg", "in6.jpg", "in7.jpg", "in8.jpg"};

    while (rs.next()) {
        if (count % 8 == 0) {
            if (count != 0) {
%>
                </div>  
<%
            }
%>
            <div class="row">
                <div class="col-md-12">
                    <img class="partner-image" src="<%= partnerImages[count / 8] %>" alt="Image">
                </div>
            </div> 
            <div class="row">
<%
        }

        int id = rs.getInt("id");
        String name = rs.getString("name");
        String description = rs.getString("description");
        double price = rs.getDouble("price");
        
        byte[] imageData = null;
        Blob blob = rs.getBlob("image");
        if (blob != null) {
            imageData = blob.getBytes(1, (int) blob.length());
        }
%>
        <div class="col-md-3 mb-4">
            <div class="card">
                <img src="data:image/jpeg;base64,<%= javax.xml.bind.DatatypeConverter.printBase64Binary(imageData) %>" class="card-img-top" alt="<%= name %>">
                <div class="card-body">
                    <h5 class="card-title"><%= name %></h5>
                    <p class="card-text"><%= description %></p>
                    <p class="card-text"><strong><%= price %>DT</strong></p>
                    <a class="btn btn-primary" onclick="addToCart(<%= id %>, '<%= name %>', <%= price %>)">Add to Cart</a>
                </div>
            </div>
        </div>
<%
        count++; 
    }

    // Close any open row divs
    if (count % 8 != 0) {
%>
        </div> 
<%
    }

    rs.close();
    stmt.close();
    conn.close();
} catch (Exception e) {
    e.printStackTrace();
}
%>






  <footer>
  
  <center>
        <div class="contact-info">
        
          <ul>
               Email: info@oneday.com<br>
                Phone: +1 (123) 456-7890<br>
                Address: [ NewYorkCity,70368880]
            </ul>
        </div></center>
    <center>    <div class="quick-links">
            <ul>
                <li><a href="about.html">About Us</a></li>
                <li><a href="services.html">Our Services</a></li>
                <li><a href="contact.html">Contact Us</a></li>
            </ul>
        </div></center>
    </div>
    <div class="copyright">
        <p>&copy; 2024 OneDay. All rights reserved.</p>
    </div>
</footer>



  
    <div class="sell-button">
        <a href="sell.jsp" class="btn btn-primary">Sell Us Something</a>
    </div>


 

      <script>
      function addToCart(productId, productName, productPrice) {
    	    var cartItem = $('<div class="cart-item"></div>').text(productName + ' - DT' + productPrice);

    	    cartItem.data('productId', productId);

    	    cartItem.append($('<span class="product-id">').text(productId));

    	    $('#cart-items').append(cartItem);

    	    var cartTotal = parseFloat($('#cart-total').text().replace('Total: DT', ''));
    	    cartTotal += parseFloat(productPrice);
    	    $('#cart-total').text('Total: $' + cartTotal.toFixed(2));

    	    $('#cart-card').show();

     	    var cartItems = JSON.parse(sessionStorage.getItem('cartItems')) || [];
    	    cartItems.push({
    	        productId: productId,
    	        productName: productName,
    	        productPrice: productPrice
    	    });
    	    sessionStorage.setItem('cartItems', JSON.stringify(cartItems));
    	}

 
 

      function proceedToPay() {
     	    var cartItems = JSON.parse(sessionStorage.getItem('cartItems')) || [];

     	    window.location.href = 'payment.jsp?cartItems=' + JSON.stringify(cartItems);
    	}



     
        function cancel() {
             $('#cart-items').empty();
            $('#cart-total').text('Total: $0.00');
            
             document.getElementById('cart-card').style.display = 'none';
        }

        
        
        
        
        
        
        
        
        
 
    </script>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    
       <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.min.js" integrity="sha384-9a4e6K3ZIn1ealj97Wd5sCU1IdpWpSR5EgF8FPP/EP+" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
</body>
</html>

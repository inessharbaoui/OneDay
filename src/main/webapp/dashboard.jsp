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
 /* Sticky button */
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
        
          .in-stock {
            color: green;
        }
    </style>
</head>
<body>
   <nav class="navbar navbar-expand-lg navbar-light bg-light navbar-sticky">
        <a class="navbar-brand" href="main.jsp">OneDay Company</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="
        collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="upload_products.jsp">Upload Products</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="see_requests.jsp">See Requests</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Logout">Logout</a>
                </li>
            </ul>
        </div>
    </nav>

 <div class="container mt-5">
        <h2>Product List</h2>
        <table class="table">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Description</th>
                    <th>Price</th>
                    <th>Image</th>
                     <th>Status</th>
                </tr>
            </thead>
            <tbody>
            <% 
                Connection conn = null;
                Statement stmt = null;
                ResultSet rs = null;
                
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sell", "root", "");
                    stmt = conn.createStatement();
                    rs = stmt.executeQuery("SELECT * FROM products");

                    while (rs.next()) {
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
                        <tr>
                            <td><%= id %></td>
                            <td><%= name %></td>
                            <td><%= description %></td>
                            <td><%= price %>DT</td>
                            <td><img src="data:image/jpeg;base64,<%= javax.xml.bind.DatatypeConverter.printBase64Binary(imageData) %>" alt="<%= name %>" style="max-width: 100px; max-height: 100px;"></td>
                                                    <td class="in-stock">In Stock</td>
                        
                        </tr>
            <%          }
                } catch (Exception e) {
                    out.println("An error occurred: " + e.getMessage());
                } finally {
                    try {
                        if (rs != null) rs.close();
                        if (stmt != null) stmt.close();
                        if (conn != null) conn.close();
                    } catch (SQLException ex) {
                        out.println("An error occurred while closing resources: " + ex.getMessage());
                    }
                }
            %>
            </tbody>
        </table>
    </div>

<div class="sell-button">
    <a href="sell.jsp" class="btn btn-primary">Sell Us Something</a>
</div>
</body>
</html>

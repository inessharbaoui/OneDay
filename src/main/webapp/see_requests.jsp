<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>See Requests</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootswatch@4.5.2/dist/lux/bootstrap.min.css" integrity="sha384-9+PGKSqjRdkeAU7Eu4nkJU8RFaH8ace8HGXnkiKMP9I9Te0GJ4/km3L1Z8tXigpG" crossorigin="anonymous">
    <style>
        body {
            font-family: "Arial", sans-serif;
            background-color: #f5f5f5;
            padding: 20px;
        }

        .container {
            padding: 20px;
            background-color: #ffffff;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }

        .btn-go-back {
            margin-bottom: 20px;
        }

        .table th {
            background-color: #343a40;
            color: #ffffff;
            font-weight: bold;
            border-color: #dee2e6;
        }

        .table td, .table th {
            vertical-align: middle;
            border: 1px solid #dee2e6;
        }

        .table td {
            vertical-align: middle;
        }

        .table-hover tbody tr:hover {
            background-color: #f8f9fa;
        }

        .table-hover tbody tr:hover td {
            background-color: #f8f9fa;
        }

        .btn-replied {
            background-color: #28a745 !important;  
            color: white;
        }
    </style>
</head>
<body>
    <button type="button" onclick="history.back()" class="btn btn-secondary mt-3">Go Back</button>

    <div class="container">
        <h1 class="mb-4">Submitted Requests</h1>
        
        <table class="table table-hover">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Item Name</th>
                    <th>Item Description</th>
                    <th>Item Price</th>
                    <th>Contact</th>
                    <th>Action</th> 
                </tr>
            </thead>
            <tbody>
                <% 
                    try {
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/sell?user=root&password=");
                        Statement statement = connection.createStatement();
                        ResultSet resultSet = statement.executeQuery("SELECT * FROM requests");

                        while (resultSet.next()) {
                %>
                            <tr>
                                <td><%= resultSet.getInt("id") %></td>
                                <td><%= resultSet.getString("itemName") %></td>
                                <td><%= resultSet.getString("itemDescription") %></td>
                                <td>DT<%= resultSet.getDouble("itemPrice") %></td>
                                <td><%= resultSet.getString("contact") %></td>
                                <td><button class="btn btn-primary" onclick="markReplied(this);">Mark Replied</button></td> 
                            </tr>
                <% 
                        }
                        resultSet.close();
                        statement.close();
                        connection.close();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                %>
            </tbody>
        </table>
    </div>

  <script>
    function markReplied(button) {
        if (!button.classList.contains('btn-replied')) {
            button.classList.add('btn-replied');
            button.disabled = true;
        }
    }
</script>

</body>
</html>

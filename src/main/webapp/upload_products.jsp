<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Upload Products</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootswatch@4.5.2/dist/lux/bootstrap.min.css" integrity="sha384-9+PGKSqjRdkeAU7Eu4nkJU8RFaH8ace8HGXnkiKMP9I9Te0GJ4/km3L1Z8tXigpG" crossorigin="anonymous">
<style type="text/css">body {
  font-family: "Arial", sans-serif;
  background-color: #f5f5f5;
  padding: 50px;
}

.container {
  max-width: 600px;
  margin: 0 auto;
  padding: 50px;
  background-color: #fff;
  box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
  border-radius: 8px;
}

.form-group {
  margin-bottom: 30px;
}

label {
  display: block;
  font-size: 16px;
  font-weight: bold;
  margin-bottom: 8px;
  color: #333;
  text-align: left;
}

input,
select {
  width: 100%;
  padding: 10px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-bottom: 10px;
}

button {
  background-color: #4caf50;
  color: #fff;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  font-size: 16px;
}

button:hover {
  background-color: #45a049;
}

.cute-message {
  font-size: 14px;
  color: #666;
  margin-top: 20px; 
}

.cute-message a {
  color: #ed80ec;
  text-decoration: none;
  font-weight: bold;
}

.cute-message a:hover {
  text-decoration: underline;
}
</style>
</head>
<body>
                <button type="button" onclick="history.back()" class="btn btn-secondary mt-3">Go Back</button>

    <div class="container">
        <h1>Upload Products</h1>
        <form action="upload_products" method="post" enctype="multipart/form-data">
            <div class="mb-3">
                <label for="productName" class="form-label">Product Name</label>
                <input type="text" class="form-control" id="productName" name="productName" required>
            </div>
            <div class="mb-3">
                <label for="productDescription" class="form-label">Product Description</label>
                <textarea class="form-control" id="productDescription" name="productDescription" rows="3" required></textarea>
            </div>
            <div class="mb-3">
                <label for="productPrice" class="form-label">Product Price</label>
                <input type="number" class="form-control" id="productPrice" name="productPrice" required>
            </div>
            <div class="mb-3">
                <label for="productImage" class="form-label">Product Image</label>
                <input type="file" class="form-control" id="productImage" name="productImage" accept="image/*" required>
            </div>
            <button type="submit" class="btn btn-primary">Upload Product</button>
        </form>
    </div>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Service Request Form</title>
    <link href="https://cdn.jsdelivr.net/npm/bootswatch@4.5.2/dist/lux/bootstrap.min.css" rel="stylesheet" integrity="sha384-9+PGKSqjRdkeAU7Eu4nkJU8RFaH8ace8HGXnkiKMP9I9Te0GJ4/km3L1Z8tXigpG" crossorigin="anonymous">
    <style>
        .form-container {
            border: 1px solid #ced4da;
            padding: 20px;
            border-radius: 5px;
            margin-top: 20px;
        }
    </style>
</head>
<body>

<div class="container">
                <a class="nav-link" href="javascript:history.back()">Back</a>
               
    <form method="post" action="sell">
        <fieldset class="form-container">
            <legend>Selling</legend>
            <div class="mb-3">
                <label for="itemName" class="form-label mt-4">Item name </label>
                <input type="text" class="form-control" id="itemName" name="itemName" placeholder="Enter item name">
                <small id="itemNameHelp" class="form-text text-muted">Enter the name of the item you are selling.</small>
            </div>
            <div class="mb-3">
                <label for="itemDescription" class="form-label mt-4">Description</label>
                <input type="text" class="form-control" id="itemDescription" name="itemDescription" placeholder="Enter item description">
                <small id="itemDescriptionHelp" class="form-text text-muted">Enter a brief description of the item.</small>
            </div>
            <div class="mb-3">
                <label for="itemPrice" class="form-label mt-4">Price</label>
                <input type="number" class="form-control" id="itemPrice" name="itemPrice" placeholder="Enter item price">
                <small id="itemPriceHelp" class="form-text text-muted">Enter the price of the item.</small>
            </div>
            <div class="mb-3">
                <label for="contact" class="form-label mt-4">Contact</label>
                <input type="text" class="form-control" id="contact" name="contact" placeholder="Enter contact information">
                <small id="contactHelp" class="form-text text-muted">Enter your contact information.</small>
            </div>
            <div class="mb-3">
                <button type="submit" class="btn btn-primary">Submit</button>
            </div>
        </fieldset>
    </form>
</div>

</body>
</html>


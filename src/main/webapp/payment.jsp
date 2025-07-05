<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Payment</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootswatch@4.5.2/dist/lux/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" integrity="sha512-b6Bhy7tpyfQyCEZoAB4IUf8UQT8I6CBA0r+79yhRMC7e5LjRwX3yTTRT61VY9VIqAFKthto3q15eWc6z8Kb2Bw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootswatch@4.5.2/dist/lux/bootstrap.min.css" integrity="sha384-9+PGKSqjRdkeAU7Eu4nkJU8RFaH8ace8HGXnkiKMP9I9Te0GJ4/km3L1Z8tXigpG" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="dcodes/payment_icons/dc_payment_icons.css" />
    <link rel="stylesheet" type="text/css" href="http://cdn.dcodes.net/2/payment_icons/dc_payment_icons.css" />
    <style>
        .div {
            border: 1px solid #ccc;
            padding: 10px;
            margin-bottom: 10px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }
        
        .container {
            max-width: 800px;
            margin: 0 auto;
            padding: 30px;
            background-color: #fff;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
        }
        
        .stamp {
            width: 100px;
            height: 100px;
            border-radius: 50%;
            background-image: url('stamp.jpg');
            background-size: cover;
            margin-left: 610px;
        }

        .stamp-container {
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1 class="mt-5"><center><b>Payment</b></center></h1>
        <p>This is the payment page where you can complete your purchase.</p>
        
        <h2>Items you want to buy :</h2>
        <div id="selected-items" class="div">
            <!-- Display selected items here -->
        </div>
        
      <form action="" method="get">
        
 <div class="mb-3">
                <label for=  class="form-label">Card Number:</label>
                <div class="input-group">
                    <input type="text" id="card_number"   class="form-control" placeholder="xxxx xxxx xxxx xxxx" maxlength="19">
                    <span class="dc_payment_icons_bevel_48 dc_visa_bevel" title="Visa"></span>
                    <span class="dc_payment_icons_bevel_48 dc_mastercard_bevel" title="Mastercard"></span>
                    <span class="dc_payment_icons_bevel_48 dc_americanexpress_bevel" title="American Express"></span>
                    <span class="dc_payment_icons_bevel_48 dc_americanexpress02_bevel" title="American Express"></span>
                </div>
            </div>

            <div class="mb-3">
                <label for="expiry_date" class="form-label">Address:</label>
                <input type="text" id="expiry_date"   class="form-control" placeholder="Enter your address">
            </div>

            <div class="stamp-container">
                <label for="stamp" class="form-label">Stamp:</label>
                <div class="stamp"></div>
            </div>
            
            
            
            
            
    <button id="deleteButton"    class="btn btn-primary"   >Pay </button>
   
    
      <a href="javascript:history.go(-1)">cancel</a>

    
    
    
    
    
        </form>
        
    </div>
    
    
    
    
    
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
    $(document).ready(function() {
        function retrieveProductIdsFromUrl() {
            var urlParams = new URLSearchParams(window.location.search);
            var productIds = [];
            
            urlParams.forEach(function(value, key) {
                if (key.startsWith('productId')) {
                    productIds.push(value);
                }
            });

            if (productIds.length === 0) {
                var cartItems = urlParams.get('cartItems');
                if (cartItems) {
                    var cartItemsArray = JSON.parse(cartItems);
                    productIds = cartItemsArray.map(item => item.productId);
                }
            }
            return productIds;
        }

  

        $("#deleteButton").on("click", function() {
            var productIds = retrieveProductIdsFromUrl();
            if (productIds.length > 0) {
                productIds.forEach(function(productId) {
                    $.ajax({
                        url: "DeleteProductServlet",
                        method: "GET",
                        data: { productId: productId },
                        success: function(response) {
                            window.location.href = "main.jsp";
                        },
                        error: function(xhr, status, error) {
                            console.error("Error deleting product: " + error);
                        }
                    });
                });
                alert("Products deleted successfully!");
            } else {
                alert("Product IDs not found in URL.");
            }
        });
    });

    </script>
    
    
     <script>
        $(document).ready(function() {
            var cartItems = sessionStorage.getItem('cartItems');
            if (cartItems) {
                cartItems = JSON.parse(cartItems);
                var selectedItemsDiv = $('#selected-items');

                cartItems.forEach(function(item) {
                    var itemHTML = '<div><strong>reference:</strong> ' + item.productId + ' | <strong>Name:</strong> ' + item.productName + ' | <strong>Price:</strong> DT' + item.productPrice.toFixed(2) + '</div>';
                    selectedItemsDiv.append(itemHTML);
                });
            }

            $('#payment-form').submit(function(event) {
                event.preventDefault();
                
            });
        });
    </script>
</body>
</html>

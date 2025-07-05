<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>OneDay - Shipping Guidelines</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootswatch@4.5.2/dist/lux/bootstrap.min.css" integrity="sha384-9+PGKSqjRdkeAU7Eu4nkJU8RFaH8ace8HGXnkiKMP9I9Te0GJ4/km3L1Z8tXigpG" crossorigin="anonymous">
    <style>
        .partner-info {
            margin-top: 30px;
        }

        .partner-info h2 {
            margin-top: 20px;
        }

        .partner-info p {
            margin-bottom: 20px;
        }

        .navbar-fixed-top {
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

        .btn {
            border-radius: 7px;
        }

        .partner-image {
            width: 100%; 
            height: auto;
        }

        .contact-container {
            border-radius: 15px;
            background-color: #f8f9fa; 
            padding: 20px;
            margin-top: 30px;
        }
        
        
            .right-align {
            text-align: right;
        }

        .hidden {
            top: -100px;
        }
        
           .title {
            font-size: 48px;
            margin-top: 20px;
            margin-bottom: 20px;
        }
            ul {
            padding-left: 0;
            list-style-type: none;
        }

        li {
            margin-bottom: 20px;
            padding: 10px 20px;
            background-color: #f8f9fa; 
            border-radius: 10px; 
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1); 
        }

        li strong {
            font-weight: bold;
        }
          p {
            display: none;
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
         .card-container {
            overflow-x: scroll; 
            white-space: nowrap; 
            padding: 20px 0;
        }

        .card {
            width: 200px;
            height: 300px;
            background-color: #f0f0f0;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin: 0 10px;
            transition: transform 0.5s ease;
            display: inline-block; 
        }

        .card-content {
            padding: 20px;
        }


        @keyframes moveRight {
            0% {
                transform: translateX(-100%);
            }
            100% {
                transform: translateX(0);
            }
        }

        @keyframes moveLeft {
            0% {
                transform: translateX(100%);
            }
            100% {
                transform: translateX(0);
            }
        }
    </style>
    <style>
    .card {
        width: 200px;
        height: 300px;
        background-color: pink;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        margin: 0 10px;
        transition: transform 0.5s ease;
    }

    .card-content {
        padding: 20px;
    }

 
    @keyframes moveRight {
        0% {
            transform: translateX(-100%);
        }
        100% {
            transform: translateX(0);
        }
    }

    @keyframes moveLeft {
        0% {
            transform: translateX(100%);
        }
        100% {
            transform: translateX(0);
        }
    }

    .card.flip .card-content {
        transform: rotateY(180deg); 
    }

    .card-content {
        transition: transform 0.5s;  
        width: 100%; 
        height: 100%;   
    }

    .card-content img {
        width: 100%; 
        height: 100%;
        object-fit: cover; 
    }
</style>
    
</head>
<body>
   <nav class="navbar navbar-expand-lg navbar-light bg-light navbar-fixed-top">
        <a class="navbar-brand" href="#">OneDay</a>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li1 class="nav-item">
                    <a class="nav-link" href="#">Guidelines</a>
                </li1>
                <li1 class="nav-item">
                    <a class="nav-link" href="javascript:history.back()">Back</a>
                </li1>
            </ul>
        </div>
    </nav>     
    <img class="partner-image" src="kk.jpg" alt="Image 1">
    <div class="container">
        <div class="right-align">
            <h1 class="title">Shipping & Delivery Guidelines</h1>
        </div>
   
            
  <center>  
    <div class="card-container">
        <!-- First Card -->
        <div class="card" style="animation: moveRight 1s ease;">
            <div class="card-content">
                    <img class="partner-image" src="mmm.jpg" alt="Image 1">

            </div>
        </div>
        <!-- Second Card -->
        <div class="card" style="animation: moveRight 2s ease;">
            <div class="card-content">
                      <img class="partner-image" src="mmm.jpg" alt="Image 1">
                      
                      

            </div>
        </div>
        <!-- Third Card -->
        <div class="card" style="animation: moveRight 3s ease;">
            <div class="card-content">
                     <img class="partner-image" src="mmm.jpg" alt="Image 1">

            </div>
        </div>
    </div></center>
    
     <ul>
    <li onclick="showParagraph('properPackaging')"><strong>Proper Packaging:</strong> Ensure items are securely packaged to prevent damage.</li>
    <p id="properPackaging">Proper packaging is essential to protect items during shipping. It involves using appropriate materials, such as boxes, padding, and tape, to secure items and prevent them from shifting or getting damaged during transit. The packaging should be sturdy enough to withstand handling and potential impacts. Additionally, proper labeling and marking of packages can help ensure they are handled correctly and reach their destination safely. Investing in quality packaging not only protects the products but also enhances the overall customer experience by demonstrating care and professionalism.</p>
    
    <li onclick="showParagraph('accurateAddress')"><strong>Accurate Address:</strong> Provide complete addresses to minimize delays.</li>
    <p id="accurateAddress">Providing accurate addresses is crucial for timely delivery. It ensures that the package reaches the intended recipient without delays or complications. When entering addresses, it's important to include all necessary details, such as the recipient's name, street address, apartment or unit number, city, state or province, postal code, and country. Double-checking the address for accuracy can help prevent misdeliveries and other shipping issues. Additionally, providing clear instructions for special delivery considerations, such as gate codes or delivery preferences, can further streamline the delivery process and minimize potential delays.</p>
    
    <li onclick="showParagraph('reliableCarriers')"><strong>Reliable Carriers:</strong> Collaborate with trusted carriers.</li>
    <p id="reliableCarriers">Choosing reliable carriers is essential for ensuring that packages are delivered safely and on time. Trusted carriers have a proven track record of reliability, efficiency, and quality service. When selecting a carrier, consider factors such as shipping rates, delivery speed, coverage area, package tracking options, and customer service. Building a partnership with a reliable carrier can help streamline the shipping process and provide peace of mind to both businesses and customers. Additionally, working with carriers that offer insurance and shipment tracking can further protect valuable packages and provide transparency throughout the delivery process.</p>
    
    <li onclick="showParagraph('clearCommunication')"><strong>Clear Communication:</strong> Communicate shipping timelines clearly.</li>
    <p id="clearCommunication">Clear communication of shipping timelines is essential for managing customer expectations and ensuring satisfaction. Provide accurate estimates of when orders will be processed, shipped, and delivered. Clearly communicate any delays or changes to the shipping schedule and provide updates throughout the process. Offering tracking information and proactive notifications can help keep customers informed and reduce inquiries or concerns about their orders. Additionally, providing multiple channels for communication, such as email, phone, and live chat support, can further enhance the customer experience and address any questions or issues in a timely manner.</p>

    <!-- Add more list items and corresponding paragraphs -->
    
    <li onclick="showParagraph('qualityAssurance')"><strong>Quality Assurance:</strong> Ensure item quality before shipping.</li>
    <p id="qualityAssurance">Quality assurance involves inspecting products to ensure they meet predefined standards of quality. Before shipping items to customers, it's important to perform thorough quality checks to identify any defects, damage, or discrepancies. This can include visual inspections, functional tests, and verification of specifications. By maintaining high standards of quality assurance, businesses can minimize returns, improve customer satisfaction, and protect their reputation. Implementing quality control measures at every stage of the shipping process, from procurement to packaging, can help identify and address issues before they reach the customer, ensuring that only the highest-quality products are delivered.</p>
    
    <li onclick="showParagraph('customerSupport')"><strong>Customer Support:</strong> Provide excellent support.</li>
    <p id="customerSupport">Providing excellent customer support is essential for building trust and loyalty with customers. Effective support services help address customer inquiries, resolve issues, and provide assistance throughout the shipping process. This includes offering multiple channels for communication, such as phone, email, and live chat support, as well as providing timely responses to customer inquiries. Additionally, businesses should empower their support team with the knowledge and resources needed to address customer concerns effectively. By prioritizing customer satisfaction and delivering exceptional support experiences, businesses can differentiate themselves from competitors and build long-lasting relationships with their customers.</p>
</ul>

    </div>
        <img class="partner-image" src="hey.jpg" alt="Image 1">
    
       <script>
        function showParagraph(paragraphId) {
            // Hide all paragraphs
            const paragraphs = document.querySelectorAll('p');
            paragraphs.forEach(paragraph => {
                paragraph.style.display = 'none';
            });
            
            // Show the selected paragraph
            const selectedParagraph = document.getElementById(paragraphId);
            selectedParagraph.style.display = 'block';
        }
    </script>
    
    
    


<style>
    .card.flip .card-content {
        transform: rotateY(180deg); 
    }

    .card-content {
        transition: transform 0.5s; 
    }
</style>

<script>
    // Get all card elements
    const cards = document.querySelectorAll('.card');

    // Add double-click event listener to each card
    cards.forEach(card => {
        card.addEventListener('dblclick', function() {
            // Toggle the 'flip' class
            this.classList.toggle('flip');
        });
    });
</script>

    
   <footer>
  
  <center>
  </center>
    <center>    <div class="quick-links">
            <ul>
                <li><a href="about.html">About Us</a></li>
                <li><a href="services.html">Our Services</a></li>
                <li><a href="contact.html">Contact Us</a></li>
            </ul>
        </div></center>
    </div>
    <div >
        <p>&copy; 2024 OneDay. All rights reserved.</p>
    </div>
</footer>
</body></html>
        
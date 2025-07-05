# OneDay

A Java EE-based e-commerce platform where users can buy and sell products online. OneDay features a dual interface for both **buyers** and **sellers**, with admin oversight for inventory, requests, and partnerships. The system enables smooth online shopping, stock tracking, and seller product management.

## Table of Contents

* [About the Project](#about-the-project)
* [Features](#features)
* [Tech Stack](#tech-stack)
* [Getting Started](#getting-started)
  * [Prerequisites](#prerequisites)
  * [Installation](#installation)
  * [Running Locally](#running-locally)
* [Usage](#usage)
* [Screenshots & Demo](#screenshots--demo)
* [Roadmap](#roadmap)
* [Contributing](#contributing)
* [Contact](#contact)

## About the Project

**OneDay** is an online marketplace built using Java EE and deployed on the WildFly application server. It supports two major roles: sellers (who manage products, stock, and respond to requests), and buyers (who browse, add items to cart, and place orders). An admin role helps oversee the entire system, ensuring smooth operation, stock control, and partnership integration.

## Features

* **Buyer-Side**
  - Product browsing and category filtering
  - Add to cart and checkout
  - View order history
  - Access platform guidelines and partnerships

* **Seller-Side**
  - Upload and manage products
  - Track items in stock or out of stock
  - Handle buyer requests and inquiries

* **Admin-Side**
  - Monitor all sellers and buyers
  - Check out-of-stock alerts
  - Manage platform guidelines and partnerships

## Tech Stack

**Backend:**
* Java EE (JSP, Servlets)
* JDBC
* MySQL

**Frontend:**
* JSP / HTML5 / CSS3
* JavaScript (Vanilla)

**Server:**
* WildFly (Jakarta EE Application Server)

**Development:**
* Eclipse IDE

## Getting Started

Follow the steps below to run the project locally.

### Prerequisites

* Java JDK 8 or higher
* WildFly Server (e.g., 26+)
* MySQL Server
* Eclipse IDE (with Dynamic Web Project support)
* Git

### Installation

1. **Clone the Repository**

   ```bash
   git clone https://github.com/inessharbaoui/OneDay.git
   cd OneDay
   ```

2. **Import into Eclipse**

   * Open Eclipse
   * Go to `File > Import > Existing Projects into Workspace`
   * Browse to the `OneDay` directory

3. **Set Up the Database**

   * Create a new MySQL database (e.g., `oneday_db`)
   * Import the provided `.sql` file (if available)
   * Update your DB connection settings (e.g., in `DBConnection.java`)

4. **Configure WildFly**

   * Add a new WildFly server in Eclipse (use Server tab)
   * Set your deployment runtime to WildFly
   * Add the OneDay project to the deployment list

### Running Locally

1. Start WildFly Server from Eclipse or CLI

2. Visit the application in your browser:

   ```
   http://localhost:8080/OneDay/
   ```

3. Login or navigate as buyer, seller, or admin.

## Usage

* **Buyers** can:

  * Register and log in
  * Browse items
  * Add to cart and place orders

* **Sellers** can:

  * Log in to their dashboard
  * Upload new products
  * View requests and update stock

* **Admins** can:

  * View all registered users
  * Monitor out-of-stock items
  * Manage content for guidelines/partnerships

## Screenshots & Demo

**Screenshots coming soon...**

> Want to contribute demo images? Submit a pull request!

## Roadmap

* [ ] Product review and ratings system
* [ ] Integration with online payment gateways
* [ ] Mobile-first responsive design
* [ ] Admin notifications and analytics
* [ ] Public API for external sellers

## Contributing

We welcome contributions! To get started:

1. Fork the repository
2. Create a feature branch: `git checkout -b feature/YourFeature`
3. Commit your changes: `git commit -m 'Add YourFeature'`
4. Push to your branch: `git push origin feature/YourFeature`
5. Open a Pull Request

## Contact

**Project Lead:** Iness Harbaoui

* GitHub: [@inessharbaoui](https://github.com/inessharbaoui)
* LinkedIn: [Iness Harbaoui](https://linkedin.com/in/iness-harbaoui-969298279)
* Email: [ines.harbaoui.ih@gmail.com](mailto:ines.harbaoui.ih@gmail.com)

---

⭐ If you find this project helpful, please consider giving it a star!

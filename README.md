# Shop-Zone-Website
Shop Zone is a dynamic e-commerce web application built using Java (JSP, Servlets, JDBC), HTML, CSS,  JavaScript , MYSQL.

Here’s a comprehensive **README.md** file description for your **Shop Zone** project:  

```markdown
# Shop Zone

**Shop Zone** is a dynamic and feature-rich e-commerce web application designed to provide users with a seamless online shopping experience. Built using **Java (JSP, Servlets, JDBC)** along with **HTML, CSS, and JavaScript**, it integrates a robust **MySQL database** to manage products, categories, customers, orders, and more. The application is developed to support both customer-facing functionalities and administrative management.

---

## Features

### 1. **User Authentication**
- Secure login and registration functionality for customers.
- Validation checks for duplicate emails and usernames during registration.
- Cookies set for user sessions lasting 24 hours.

### 2. **Product Catalog**
- Organized by parent categories and subcategories.
- Gender-based filtering for subcategories.
- Detailed product descriptions, images, and pricing (show price and actual price).
- Discount handling and stock availability tracking.

### 3. **Shopping Cart**
- Add, update, and remove items from the cart.
- Displays total cost with discounts applied.
- Automatic stock checks before order confirmation.

### 4. **Order Management**
- Place orders directly from the shopping cart.
- Track order details through order history.
- Manage order line items with payment status and delivery details.

### 5. **Wishlist**
- Save favorite products for future purchases.

### 6. **Admin Features**
- Add, update, and delete products, categories, and subcategories.
- View and manage customer feedback.
- Track and manage orders, payments, and delivery statuses.

### 7. **Database Integration**
- Comprehensive database design with the following tables:
  - `parent_category`, `sub_category`, `product`, `image`
  - `cart`, `wishlist`, `orders`, `order_line_item`
  - `customer`, `employee`, `delivery_person`, `payment`, `feedback`
- Relationships established for efficient data retrieval.

---

## Technologies Used

- **Frontend**: HTML, CSS (Bootstrap framework styling), JavaScript.
- **Backend**: Java (JSP, Servlets), JDBC.
- **Database**: MySQL.
- **Development Tools**: Eclipse IDE for dynamic web projects.
- **Web Server**: Apache Tomcat.

---

## File Structure

```

  ├───.settings
├───build
│   └───classes
│       └───project
└───src
    └───main
        ├───java
        │   └───project
        └───webapp
            ├───admin
            ├───adminn
            ├───css
            ├───delivery_person
            ├───files
            ├───img
            │   ├───cat_img
            │   └───product_img
            ├───js
            ├───lib
            │   ├───animate
            │   ├───easing
            │   └───owlcarousel
            │       └───assets
            ├───mail
            ├───META-INF
            ├───scss
            │   └───bootstrap
            │       └───scss
            │           ├───mixins
            │           ├───utilities
            │           └───vendor
            └───WEB-INF
                └───lib
```

---

## Installation and Setup

1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/shop-zone.git
   ```

2. Import the project into Eclipse IDE as a **Dynamic Web Project**.

3. Set up the MySQL database:
   - Create a database named `shop_zone`.
   - Import the provided SQL file to set up tables and initial data.

4. Update the database connection in `project/connection.java`:
   ```java
   String url = "jdbc:mysql://localhost:3306/shop_zone";
   String username = "root";
   String password = "your-password";
   ```

5. Deploy the project on Apache Tomcat:
   - Right-click the project in Eclipse, select `Run on Server`, and choose Tomcat.

6. Access the application in your browser at:
   ```
   http://localhost:8080/shop-zone/
   ```

---

## Future Enhancements

- Implement user reviews and ratings for products.
- Add support for multiple payment gateways.
- Enhance security with password hashing and session management.
- Optimize performance for large product catalogs.

---

## License

This project is licensed under the [MIT License](LICENSE).

---

## Contributors

- **Your Name** – Project Lead and Developer
- [Optional: Team Members or Mentions]

---

Feel free to contribute to the project by submitting issues or pull requests. Feedback and suggestions are always welcome!
```

This README file includes everything you need to present your project effectively, from features to setup instructions. Let me know if you need adjustments!

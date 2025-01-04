# Shop-Zone-Website
Shop Zone is a dynamic e-commerce web application built using Java (JSP, Servlets, JDBC), HTML, CSS,  JavaScript , MYSQL.


```markdown
# Shop Zone

**Shop Zone** is a dynamic and feature-rich e-commerce web application
designed to provide users with a seamless online shopping experience.
Built using **Java (JSP, Servlets, JDBC)** along with **HTML, CSS, and JavaScript**,
it integrates a robust **MySQL database** to manage products, categories,
customers, orders, and more. The application is developed to support
both customer-facing functionalities and administrative management.

---

## Features

### 1. **User Authentication**
- Secure login and registration functionality for customers.
- Validation checks for duplicate emails and usernames during registration.
- User sessions to store user information.

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




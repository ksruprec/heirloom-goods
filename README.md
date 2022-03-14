# HTML/CSS/JS and SQL
- **E-commerce Business challenge from Code Platoon**

## Tech Used
- Completed e-commerce site using HTML, CSS, Bootstrap, and vanilla JS
- Used SQLite3 to create unrelated database to make raw SQL queries.

### Back-end Database
My database was designed to store customer, product, category, and order information. 
- database/schema.sql:
  - SQL containing the schema design for your database (tables and relationships)
- database/seeds.sql:
  - SQL containing the seed data to populate your database tables
- database/queries.sql:
  - SQL containing queries to extract the following data from your database tables:
  1. Retrieve the first name, last name, and email address of all customers that have a Gmail email address.
  2. Retrieve the address of the customers and the order IDs for all orders that were placed in 2020
  3. Retrieve all product details for products that are under the "Kitchen" category
  4. Retrieve the product names and prices of all products ordered by the customer with first name "Bugs" and last name "Bunny"

### Part II: Front-End Website
My e-commerce website was structured using HTML, designed using CSS/Bootstrap, and made functional via vanilla JavaScript. This website features multiple pages, including:
- **Home page** (index.html)
  - This page shows a basic intro and other common basic home page content
- **Category pages**
  - A separate page for each of the various product categories (e.g. "Decor", "Kitchen", "Bed", & "Bath")
  - These pages should show various (at least 3 per category) products with images, names, and prices. 
    - NOTE: You can hard code these products for each page. You do not need to make it dynamic (i.e. do not need to use JavaScript to present product information) 
  - These pages allow users to add products to their virtual shopping cart
- **Shopping Cart page**
  - This page shows all of the items that were added to the user's shopping cart using local storage

Additionally, my site includes:
  - Site navigation between all pages
  - Basic styling using CSS
    - Bootstrap navbar component
  - Implement shopping cart functionality using JavaScript and persist data using your browser's localStorage object.
    - Aggregates total price of all items in shopping cart
    - NOTE: functionality I would like to add in the future is showing item quantities, removing items from cart, etc.


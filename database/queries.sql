-- Queries

--  1. Retrieve the first name, last name, and email address of all customers that have a Gmail email address.
SELECT first_name, last_name, email FROM customers
WHERE email ilike '%gmail%';

--  2. Retrieve the address of the customers and the order IDs for all orders that were placed in 2020
SELECT customers.last_name, orders.id AS order_id, line_1, line_2, city, state, zipcode FROM addresses
JOIN customers ON customers.address_id = addresses.id
JOIN orders ON orders.customer_id = customers.id
WHERE EXTRACT(YEAR FROM order_placed_date) = 2020;

-- 3. Retrieve all product details for products that are under the "Kitchen" category
SELECT * FROM products
WHERE category_id = 1;

-- 4. Retrieve the product names and prices of all products ordered by the customer with first name "Bugs" and last name "Bunny"
SELECT product_name, price FROM products
JOIN products_orders ON products_orders.product_id = products.id
JOIN orders ON products_orders.order_id = orders.id
JOIN customers ON orders.customer_id = customers.id
WHERE first_name like 'Bugs' AND last_name like 'Bunny';
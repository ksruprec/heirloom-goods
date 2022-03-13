-- Seed data 

--addresses--
INSERT INTO addresses (id, line_1, line_2, city, state, zipcode) VALUES (1, '123 Hop Street', NULL, 'Greenville', 'Illinois',  '01234');
INSERT INTO addresses (id, line_1, line_2, city, state, zipcode) VALUES (2, '80 Scotch Way', 'Apt 102', 'Durham', 'North Carolina',  '90002');
INSERT INTO addresses (id, line_1, line_2, city, state, zipcode) VALUES (3, '412 Grape Way', NULL, 'San Diego', 'California', '78901');
INSERT INTO addresses (id, line_1, line_2, city, state, zipcode) VALUES (4, '2 Kings Lane', NULL, 'Buffalo', 'Oregon', '54321');
INSERT INTO addresses (id, line_1, line_2, city, state, zipcode) VALUES (5, '501 Rocky Road', 'Bldg 2', 'Jamestown', 'New York', '81888');

--customers--
INSERT INTO customers (id, first_name, last_name, email, address_id) VALUES (1, 'Bugs', 'Bunny', 'badbunny@gmail.com', 1);
INSERT INTO customers (id, first_name, last_name, email, address_id) VALUES (2, 'Hazel', 'Stevens',  'hazelnut@yahoo.com', 2);
INSERT INTO customers (id, first_name, last_name, email, address_id) VALUES (3, 'Victoria', 'Moody', 'vmoody@gmail.com', 3);
INSERT INTO customers (id, first_name, last_name, email, address_id) VALUES (4, 'Blanche', 'Black', 'blackcat@aol.com', 4);
INSERT INTO customers (id, first_name, last_name, email, address_id) VALUES (5, 'Gerard', 'Berry', 'berrydonut@gmail.com', 5);

--categories--
INSERT INTO categories (id, category_name) VALUES (1, 'Kitchen');
INSERT INTO categories (id, category_name) VALUES (2, 'Home');
INSERT INTO categories (id, category_name) VALUES (3, 'Bed');
INSERT INTO categories (id, category_name) VALUES (4, 'Bath');
INSERT INTO categories (id, category_name) VALUES (5, 'Office');

--product info--
INSERT INTO products (id, product_name, price, category_id) VALUES (1, 'can opener', 5.99, 1);
INSERT INTO products (id, product_name, price, category_id) VALUES (2, 'sofa', 999.00, 2);
INSERT INTO products (id, product_name, price, category_id) VALUES (3, 'shower head', 23.99, 4);
INSERT INTO products (id, product_name, price, category_id) VALUES (4, 'rug', 399.00, 2);
INSERT INTO products (id, product_name, price, category_id) VALUES (5, 'mattress', 500.00, 3);
INSERT INTO products (id, product_name, price, category_id) VALUES (6, 'wooden spatula', 7.99, 1);
INSERT INTO products (id, product_name, price, category_id) VALUES (7, 'stapler', 10.99, 5);
INSERT INTO products (id, product_name, price, category_id) VALUES (8, 'desk chair', 109.99, 5);
INSERT INTO products (id, product_name, price, category_id) VALUES (9, 'bath towel', 21.99, 4);

--inventory--
INSERT INTO inventory_entries (id, product_id, quantity) VALUES (1, 1, 25);
INSERT INTO inventory_entries (id, product_id, quantity) VALUES (2, 2, 11);
INSERT INTO inventory_entries (id, product_id, quantity) VALUES (3, 3, 30);
INSERT INTO inventory_entries (id, product_id, quantity) VALUES (4, 4, 5);
INSERT INTO inventory_entries (id, product_id, quantity) VALUES (5, 5, 17);
INSERT INTO inventory_entries (id, product_id, quantity) VALUES (6, 6, 48);
INSERT INTO inventory_entries (id, product_id, quantity) VALUES (7, 7, 72);
INSERT INTO inventory_entries (id, product_id, quantity) VALUES (8, 8, 27);
INSERT INTO inventory_entries (id, product_id, quantity) VALUES (9, 9, 52);

--customer orders--
INSERT INTO orders (id, customer_id, order_placed_date) VALUES (1, 2, '2021-11-01');
INSERT INTO orders (id, customer_id, order_placed_date) VALUES (2, 2, '2021-02-01');
INSERT INTO orders (id, customer_id, order_placed_date) VALUES (3, 1, '2020-11-11');
INSERT INTO orders (id, customer_id, order_placed_date) VALUES (4, 3, '2020-10-28');
INSERT INTO orders (id, customer_id, order_placed_date) VALUES (5, 1, '2020-02-22');
INSERT INTO orders (id, customer_id, order_placed_date) VALUES (6, 5, '2020-01-16');
INSERT INTO orders (id, customer_id, order_placed_date) VALUES (7, 4, '2019-12-07');


--products in each order--
INSERT INTO products_orders (id, order_id, product_id, quantity) VALUES (1, 1, 4, 2);
INSERT INTO products_orders (id, order_id, product_id, quantity) VALUES (2, 1, 5, 1);
INSERT INTO products_orders (id, order_id, product_id, quantity) VALUES (3, 2, 3, 3);
INSERT INTO products_orders (id, order_id, product_id, quantity) VALUES (4, 3, 1, 1);
INSERT INTO products_orders (id, order_id, product_id, quantity) VALUES (5, 3, 3, 1);
INSERT INTO products_orders (id, order_id, product_id, quantity) VALUES (6, 3, 6, 2);
INSERT INTO products_orders (id, order_id, product_id, quantity) VALUES (7, 4, 8, 1);
INSERT INTO products_orders (id, order_id, product_id, quantity) VALUES (8, 5, 2, 1);
INSERT INTO products_orders (id, order_id, product_id, quantity) VALUES (9, 5, 4, 1);
INSERT INTO products_orders (id, order_id, product_id, quantity) VALUES (10, 5, 9, 4);
INSERT INTO products_orders (id, order_id, product_id, quantity) VALUES (11, 6, 5, 2);
INSERT INTO products_orders (id, order_id, product_id, quantity) VALUES (12, 7, 7, 1);
INSERT INTO products_orders (id, order_id, product_id, quantity) VALUES (13, 7, 8, 2);

SELECT setval('customers_id_seq', (SELECT MAX(id) FROM customers));
SELECT setval('categories_id_seq', (SELECT MAX(id) FROM categories));
SELECT setval('products_id_seq', (SELECT MAX(id) FROM products));
SELECT setval('inventory_entries_id_seq', (SELECT MAX(id) FROM inventory_entries));
SELECT setval('orders_id_seq', (SELECT MAX(id) FROM orders));
SELECT setval('products_orders_id_seq', (SELECT MAX(id) FROM products_orders));


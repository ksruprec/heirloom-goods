-- Schema
DROP TABLE IF EXISTS addresses CASCADE;
DROP TABLE IF EXISTS customers CASCADE;
DROP TABLE IF EXISTS categories CASCADE;
DROP TABLE IF EXISTS inventory_entries CASCADE;
DROP TABLE IF EXISTS products CASCADE;
DROP TABLE IF EXISTS orders CASCADE;
DROP TABLE IF EXISTS products_orders CASCADE;

CREATE TABLE addresses (
  id               serial PRIMARY KEY,
  line_1           varchar(255) NOT NULL,
  line_2           varchar(255),
  city             varchar(255) NOT NULL,
  state            varchar(255) NOT NULL,
  zipcode          varchar(10)
);

CREATE TABLE customers (
  id               serial PRIMARY KEY,
  first_name       varchar(255) NOT NULL,
  last_name        varchar(255) NOT NULL,
  email            varchar(255) NOT NULL,
  address_id       integer NOT NULL,
  FOREIGN KEY(address_id) REFERENCES addresses(id)
);

CREATE TABLE categories (
  id                serial PRIMARY KEY,
  category_name     varchar(255) NOT NULL
);

CREATE TABLE products (
  id                    serial PRIMARY KEY,
  product_name          varchar(255),
  price                 DECIMAL(10,2),
  category_id           integer NOT NULL,
  FOREIGN KEY(category_id) REFERENCES categories(id)
);

CREATE TABLE inventory_entries (
  id                serial PRIMARY KEY,
  product_id        integer NOT NULL,
  quantity          integer DEFAULT 1,
  FOREIGN KEY(product_id) REFERENCES products(id)
);

CREATE TABLE orders (
  id                serial PRIMARY KEY,
  customer_id       integer NOT NULL,
  order_placed_date date NOT NULL,
  FOREIGN KEY(customer_id) REFERENCES customers(id)
);

CREATE TABLE products_orders (
  id                serial PRIMARY KEY,
  order_id          integer NOT NULL,
  product_id        integer NOT NULL,
  quantity          integer DEFAULT 1,
  FOREIGN KEY(product_id) REFERENCES products(id),
  FOREIGN KEY(order_id) REFERENCES orders(id)
);
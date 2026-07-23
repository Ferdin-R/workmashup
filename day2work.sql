CREATE DATABASE retail_analytics;

SHOW DATABASES;

USE retail_analytics;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    full_name VARCHAR(50),
    gender ENUM('M','F'),
    city VARCHAR(30),
    is_active BOOLEAN
);

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2),
    manufacture_year YEAR
);

ALTER TABLE products
ADD stock_count INT;

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10,2),
);
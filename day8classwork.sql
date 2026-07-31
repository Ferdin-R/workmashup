CREATE DATABASE customer_analytics;
USE customer_analytics;
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50), 
    city VARCHAR(30)
);
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_amount DECIMAL(10, 2)
);
INSERT INTO customers (customer_id, customer_name, city)
VALUES 
    (1, 'Rahul', 'Nagpur'),
    (2, 'Anita', 'Pune'),
    (3, 'Karan', 'Mumbai'),
    (4, 'Neha', 'Delhi'),
    (5, 'Amit', 'Chennai');
INSERT INTO orders (order_id, customer_id, order_amount)
VALUES
    (101, 1, 5000),
    (102, 2, 7000),
    (103, 1, 3000),
    (104, 3, 4500),
    (105, 6, 6000);
SELECT * FROM customers
INNER JOIN orders ON customers.customer_id = orders.customer_id;
SELECT * FROM customers
LEFT JOIN orders ON customers.customer_id = orders.customer_id;
SELECT * FROM customers
RIGHT JOIN orders ON customers.customer_id = orders.customer_id;

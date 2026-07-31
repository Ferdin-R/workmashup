CREATE DATABASE sales_comparison;
USE sales_comparison;

CREATE TABLE online_orders (
    order_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    amount DECIMAL(10, 2)
);

CREATE TABLE store_orders (
    order_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    amount DECIMAL(10, 2)
);

INSERT INTO online_orders (order_id, customer_name, amount)
VALUES 
    ('201', 'Rahul', 8000),
    ('202', 'Anita', 6500),
    ('203', 'Karan', 7200),
    ('204', 'Neha', 5400);

INSERT INTO store_orders (order_id, customer_name, amount)
VALUES
    ('301', 'Rahul', 4000),
    ('302', 'Amit', 6000),
    ('303', 'Karan', 5000),
    ('304', 'Pooja', 4500);

SELECT customer_name
FROM online_orders
UNION
SELECT customer_name
FROM store_orders;

SELECT customer_name
FROM online_orders
UNION ALL
SELECT customer_name 
FROM store_orders;

USE customer_analytics;

SELECT customer.customer_id,customer.customer_name,orders.order_id FROM customers
LEFT JOIN orders
ON customer.customer_id=orders.customer_id
UNION
SELECT customer.customers_id,customer.customer_name, orders.order_id FROM customers
RIGHT JOIN orders 
ON customer.customer_id = orders.customer_id;



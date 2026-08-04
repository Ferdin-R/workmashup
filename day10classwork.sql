CREATE DATABASE ecommerce_analytics;
USE ecommerce_analytics;
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(30),
    order_date DATE,
    order_amount DECIMAL(10,2)
);
INSERT INTO orders (order_id, customer_name, city, order_date, order_amount)
VALUES
(1, 'Rahul Kumar', 'delhi', '2024-01-15', 4500),
(2, 'Anita Sharma', 'Mumbai', '2024-01-20', 5200),
(3, 'neha singh', 'Delhi', '2024-02-05', 6100),
(4, 'AMIT Verma', 'mumbai', '2024-02-18', 4800),
(5, 'Pooja Mehta', 'Chennai', '2024-03-02', 7000),
(6, 'karan patel', 'chennai', '2024-03-25', 5300);
SELECT TRIM(customer_name) FROM orders;
SELECT UPPER(city) FROM orders;
SELECT customer_name,LENGTH(customer_name) FROM orders;
SELECT YEAR(order_date),MONTH(order_date) FROM orders;
SELECT DATE_FORMAT(order_date,'%d-%b-%Y') FROM orders;

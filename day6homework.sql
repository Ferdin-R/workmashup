CREATE DATABASE retail_analytics;
USE retail_analytics;
CREATE TABLE sales_data (
    order_id INT PRIMARY KEY,
    city VARCHAR(30),
    product VARCHAR(50),
    sales_amount DECIMAL(10, 2)
);
INSERT INTO sales_data (order_id, city, product, sales_amount)
VALUES (
(1, 'New York', 'Laptop', 1200.50),
(2, 'Los Angeles', 'Smartphone', 800.00),
(3, 'Chicago', 'Tablet', 450.75),
(4, 'Houston', 'Headphones', 150.25),
(5, 'Phoenix', 'Smartwatch', 200.00),
(6, 'Philadelphia', 'Camera', 600.00),
(7, 'San Antonio', 'Printer', 300.00),
(8, 'San Diego', 'Monitor', 250.00),
(9, 'Dallas', 'Keyboard', 100.00),
(10, 'San Jose', 'Mouse', 50.00),
(11, 'Austin', 'Speaker', 120.00),
(12, 'Jacksonville', 'Router', 80.00),
(13, 'Fort Worth', 'Webcam', 90.00),
(14, 'Columbus', 'External Hard Drive', 150.00),
(15, 'Charlotte', 'USB Hub', 40.00)
);
SELECT city, SUM(sales_amount) AS total_sales FROM sales_data GROUP BY city;
SELECT product,SUM(sales_amount) AS total_sales FROM sales_data GROUP BY product;
SELECT city, SUM(sales_amount) AS total_sales
FROM sales_data
GROUP BY city
HAVING SUM(sales_amount) > 50000;
SELECT product, SUM(sales_amount) AS total_sales FROM sales_data 
GROUP BY product 
ORDER BY total_sales DESC 
LIMIT 3;
CREATE DATABASE sales_reporting;
USE sales_reporting;
CREATE TABLE sales_orders(
    order_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    email VARCHAR(50),
    order_date DATE,
    delivery_date DATE,
    sales_amount DECIMAL(10,2)
);
INSERT INTO sales_orders (order_id, customer_name, email, order_date, delivery_date, sales_amount)
VALUES
(101, 'RAVI kumar', 'RAVI@MAIL.COM', '2024-01-10', '2024-01-15', 8500),
(102, 'Sneha Rao', 'sneha@mail.com', '2024-01-22', '2024-01-28', 9200),
(103, 'Amit Shah', 'AMIT@mail.com', '2024-02-05', '2024-02-12', 7800),
(104, 'pooja mehta', 'pooja@mail.com', '2024-02-18', '2024-02-25', 8600),
(105, 'Karan Patel', 'KARAN@mail.com', '2024-03-08', '2024-03-16', 9900),
(106, 'Neha Singh', 'neha@mail.com', '2024-03-20', '2024-03-29', 8700);
SELECT TRIM(customer_name) FROM sales_orders;
SELECT LOWER(email) FROM sales_orders;
SELECT DATEDIFF(delivery_date, order_date) FROM sales_orders;
SELECT DATE_ADD(order_date,INTERVAL 7 DAY) FROM sales_orders;

SELECT DATE_FORMAT(order_date, '%Y-%m') AS month,
SUM(sales_amount) AS monthly_sales 
FROM sales_orders 
GROUP BY month 
ORDER BY month;

SELECT DATE_FORMAT(order_date, '%d-%b-%Y') AS report_date, 
SUM(sales_amount) AS total_sales FROM sales_orders GROUP BY report_date;


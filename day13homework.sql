USE sales_orders;
SELECT AVG(sales_amount) AS average_order_value
FROM sales_orders;

SELECT DATE_FORMAT(order_date, '%Y-%m') AS month,
SUM(sales_amount) AS total_sales
FROM sales_orders
GROUP BY DATE_FORMAT(order_date, '%Y-%m');

SELECT customer_id, COUNT(order_id) AS total_orders
FROM sales_orders
GROUP BY customer_id
HAVING COUNT(order_id) > 2;

SELECT product_name,SUM(sales_amount) AS total_revenue
FROM sales_orders
GROUP BY product_name
ORDER BY total_revenue DESC
LIMIT 3;

SELECT COUNT(*) AS total_orders,
    SUM(sales_amount) AS total_revenue,
    ROUND(AVG(sales_amount), 2) AS average_order_value,
    COUNT(DISTINCT customer_id) AS total_customers,
    COUNT(DISTINCT product_name) AS total_products,
    MAX(sales_amount) AS highest_order_value,
    MIN(sales_amount) AS lowest_order_value
FROM sales_orders;
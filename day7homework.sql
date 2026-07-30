CREATE DATABASE sales_analytics;
USE sales_analytics;
CREATE TABLE product_sales (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    price DECIMAL(10, 2),
    quantity_sold INT,
    profit_loss DECIMAL(10, 2)
);
INSERT INTO product_sales (product_id, product_name, price, quantity_sold, profit_loss)
VALUES 
    (1,'Laptop',52000.75,5,4500),
    (2,'Tablet',28000.40,8,-1200),
    (3,'Mobile',19000.30,10,2300),
    (4,'Monitor',15000.00,6,-800),
    (5,'Keyboard',1200.90,15,500),
    (6,'Mouse',800.60,20,-150),
    (7,'Printer',18000.25,4,1200),
    (8,'Scanner',22000.80,3,-900),
    (9,'Webcam',3500.50,12,700),
    (10,'Speaker',4200.40,7,350),
    (11,'Router',5600.30,9,-400),
    (12,'Headset',2500.20,14,600);
SELECT MIN(price) FROM product_sales;
SELECT MAX(price) FROM product_sales;
SELECT SUM(price * quantity_sold) AS total_revenue, AVG(price) AS average_product_price FROM product_sales;
SELECT ROUND(AVG(price), 2) AS average_price,CEIL(SUM(price * quantity_sold)) AS average_produc_price,
FLOOR(SUM(price * quantity_sold)) AS revenue_floor FROM product_sales;
SELECT product_name,profit_loss,ABS(profit_loss) AS absolute_profit_loss FROM product_sales;
SELECT product_name,quantity_sold FROM product_sales WHERE MOD(quantity_sold, 2) = 0;
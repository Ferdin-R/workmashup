CREATE DATABASE company_analytics_1;
USE company_analytics_1;
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(30),
    salary INT
);
INSERT INTO employees (emp_id, emp_name, department, salary)
VALUE(1, 'Rahul', 'IT', 60000),
      (2, 'Anita', 'IT', 52000),
      (3, 'Karan', 'HR', 45000),
      (4, 'Neha', 'HR', 48000),
      (5, 'Amit', 'Finance', 70000),
      (6, 'Pooja', 'Finance', 65000);
SELECT emp_id,
       emp_name,
       department,
       salary
FROM employees e1
WHERE salary >
(
    SELECT AVG(salary)
    FROM employees e2
    WHERE e1.department = e2.department
);
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
);
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    amount INT,
);
INSERT INTO customers
VALUES
(1,'Arun'),
(2,'Meera'),
(3,'Joseph'),
(4,'Sneha'),
(5,'Riya');
INSERT INTO orders
VALUES
(101,1,5000),
(102,1,3500),
(103,3,7000),
(104,5,2500);
SELECT customer_id,customer_name FROM customers c 
WHERE EXISTS
(
    SELECT *
    FROM orders o
    WHERE c.customer_id = o.customer_id
);

SELECT customer_id,customer_name FROM customers c
WHERE NOT EXISTS
(
    SELECT *
    FROM orders o
    WHERE c.customer_id = o.customer_id
);

SELECT emp_name,salary FROM employees
WHERE salary > ANY
(
    SELECT salary
    FROM employees
    WHERE department = 'HR'
);

SELECT emp_name,salary FROM employees
WHERE salary > ALL
(
    SELECT salary
    FROM employees
    WHERE department = 'HR'
);
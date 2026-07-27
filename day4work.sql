CREATE DATABASE company_analytics;
USE company_analytics;
CREATE TABLE employees (
    employee_id INT auto_increment PRIMARY KEY,
    employee_name VARCHAR(50) NOT NULL,
    department VARCHAR(30) NOT NULL,
    city VARCHAR(30),
    email VARCHAR(50) UNIQUE,
    salary DECIMAL(10,2),DEFAULT 25000
    age INT
);
INSERT INTO employees (employee_id,employee_name, department, city, email, salary, age)
VALUES(
    (1, 'Alice Johnson', 'Marketing', 'New York', 'alice.johnson@example.com', 30000, 30),
    (2, 'Bob Smith', 'Sales', 'Los Angeles', 'bob.smith@example.com', 28000, 25),
    (3, 'Charlie Brown', 'IT', 'Chicago', 'charlie.brown@example.com', 32000, 35),
    (4, 'David Wilson', 'HR', 'Houston', 'david.wilson@example.com', 27000, 28),
    (5, 'Eva Martinez', 'Finance', 'Phoenix', 'eva.martinez@example.com', 29000, 26),
    (6, 'Frank Thomas', 'Marketing', 'Philadelphia', 'frank.thomas@example.com', 31000, 32),
    (7, 'Grace Lee', 'Sales', 'San Antonio', 'grace.lee@example.com', 26000, 24),
    (8, 'Henry Davis', 'IT', 'San Diego', 'henry.davis@example.com', 33000, 38),
    (9, 'Isabella Garcia', 'HR', 'Dallas', 'isabella.garcia@example.com', 28000, 27),
    (10, 'Jack Martinez', 'Finance', 'San Jose', 'jack.martinez@example.com', 29000, 26)
);
SELECT * FROM employees;
SELECT employee_name, department, salary FROM employees;
SELECT DISTINCT department FROM employees;
SELECT emp_name AS employee_name FROM employees;
SELECT e.emp_name,e.city AS employee_name FROM employees AS e;
SELECT * FROM employees;

/* Retrieve employee names,
   departments, and salaries
   for focused analysis */
SELECT emp_name, department, salary
FROM employees;


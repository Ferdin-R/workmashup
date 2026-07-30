CREATE DATABASE hr_analytics;
USE hr_analytics;
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(30),
    salary DECIMAL(10, 2),
    age INT
);
INSERT INTO employees (emp_id, emp_name, department, salary, age)
VALUES (

('1', 'Rahul', 'IT', 45000.75, 26),
('2', 'Anita', 'HR', 38000.50, 24),
('3', 'Karan', 'Finance', 52000.25, 29),
('4', 'Neha', 'IT', 61000.80, 31),
('5', 'Amit', 'HR', 34000.00, 23),
('6', 'Pooja', 'Finance', 48000.40, 27),
('7', 'Ravi', 'IT', 55000.60, 28),
('8', 'Sneha', 'HR', 36000.90, 25),
('9', 'Arjun', 'Finance', 59000.10, 30),
('10', 'Meena', 'IT', 47000.35, 26)

);
SELECT MIN(salary) FROM employees;
SELECT MAX(salary) FROM employees;
SELECT COUNT(*) FROM employees
WHERE age > 25;
SELECT AVG(salary) FROM employees;
SELECT SUM(salary) FROM employees;
SELECT ROUND(AVG(salary), 2) AS average_salary FROM employees;
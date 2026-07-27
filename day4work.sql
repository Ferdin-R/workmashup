Day4-Classwork

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


Day4-Homework

CREATE DATABASE sales_analytics;
USE sales_analytics;
CREATE TABLE salespersons (
    sales_id INT auto_increment PRIMARY KEY,
    sales_name VARCHAR(50) NOT NULL,
    region VARCHAR(30) NOT NULL,
    email VARCHAR(50) UNIQUE,
    join_date DATE,
    status VARCHAR(20) DEFAULT 'active',
);
CREATE TABLE sales_orders (
    order_id INT auto_increment PRIMARY KEY,
    sales_id INT,
    order_amount DECIMAL(10,2),
    order_date DATE,
);
CREATE TABLE sales_orders (
    order_id INT auto_increment PRIMARY KEY,
    sales_id INT,
    order_amount DECIMAL(10,2),
    order_date DATE,
    FOREIGN KEY (sales_id) REFERENCES salespersons(sales_id)
);
INSERT INTO salespersons (sales_id, sales_name, region, email, join_date, status)
VALUES(
    (1, 'John Doe', 'North', 'john.doe@example.com', '2023-01-15', 'active'),
    (2, 'Jane Smith', 'South', 'jane.smith@example.com', '2023-02-20', 'active'),   
    (3, 'Mike Johnson', 'East', 'mike.johnson@example.com', '2023-03-10', 'active'),
    (4, 'Emily Davis', 'West', 'emily.davis@example.com', '2023-04-05', 'active'),
    (5, 'David Wilson', 'North', 'david.wilson@example.com', '2023-05-10', 'active'),
    (6, 'Sarah Brown', 'South', 'sarah.brown@example.com', '2023-06-15', 'active'),
    (7, 'Chris Lee', 'East', 'chris.lee@example.com', '2023-07-20', 'active'),
    (8, 'Olivia Martinez', 'West', 'olivia.martinez@example.com', '2023-08-10', 'active')
);
INSERT INTO sales_orders (order_id, sales_id, order_amount, order_date)
VALUES(
    (1, 1, 5000.00, '2023-01-20'),
    (2, 2, 7000.00, '2023-02-25'),
    (3, 3, 6000.00, '2023-03-15'),
    (4, 4, 8000.00, '2023-04-10'),
    (5, 5, 5500.00, '2023-05-15'),
    (6, 6, 7500.00, '2023-06-20'),
    (7, 7, 6500.00, '2023-07-25'),
    (8, 8, 9000.00, '2023-08-15'),
    (9, 1, 5200.00, '2023-09-05'),
    (10, 2, 7100.00, '2023-10-10'),
    (11, 3, 6200.00, '2023-11-15'),
    (12, 4, 8300.00, '2023-12-20'),
    (13, 5, 5600.00, '2023-12-25'),
    (14, 6, 7600.00, '2023-12-30'),
    (15, 7, 6700.00, '2024-01-05')
);
SELECT * FROM salespersons;
SELECT sales_name,region FROM salespersons;
SELECT DISTINCT region FROM salespersons;
SELECT sales_name AS executive_name FROM salespersons;
SELECT order_amount AS total_value FROM sales_orders;
CREATE INDEX idx_region ON salespersons(region);





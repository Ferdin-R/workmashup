DAY-2 CLASS WORK

CREATE DATABASE retail_analytics;

SHOW DATABASES;

USE retail_analytics;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    full_name VARCHAR(50),
    gender ENUM('M','F'),
    city VARCHAR(30),
    is_active BOOLEAN
);

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2),
    manufacture_year YEAR
);

ALTER TABLE products
ADD stock_count INT;

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10,2),
);



DAY-2 HOME WORK

CREATE DATABASE student_analytics;

SHOW DATABASES;

USE student_analytics;

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    full_name VARCHAR(50),
    gender ENUM('M','F'),
    birth_date DATE,
    is_active BOOLEAN
);

CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100),
    fee DECIMAL(10,2),
    duration_months INT
);

CREATE TABLE enrollments (
    student_id INT,
    course_id INT,
    enrollment_date DATE,
    PRIMARY KEY (student_id, course_id),
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

ALTER TABLE students
ADD email VARCHAR(100);

TRUNCATE TABLE enrollments;

DROP TABLE courses;

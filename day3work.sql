DAY3-classwork

CREATE DATABASE training_analytics;
USE training_analytics;

CREATE TABLE trainees (
    trainee_id INT PRIMARY KEY,
    trainee_name VARCHAR(50),
    city VARCHAR(30),
    department VARCHAR(30),
    stipend DECIMAL(8,2),
    age INT
);

INSERT INTO trainees (
    trainee_id,trainee_name,city,department,stipend,age
)
VALUES(
    1, 'John Doe', 'New York', 'Data Science', 1500.00, 25
),
(
    2, 'Jane Smith', 'Los Angeles', 'Web Development', 1200.00, 28
),
(
    3, 'Emily Johnson', 'Chicago', 'Data Science', 1600.00, 22
),
(
    4, 'Michael Brown', 'Houston', 'Cybersecurity', 1400.00, 30
),
(
    5, 'Sarah Davis', 'Phoenix', 'Web Development', 1300.00, 27
),
(
    6, 'David Wilson', 'Philadelphia', 'Data Science', 1550.00, 24
),
(
    7, 'Laura Martinez', 'San Antonio', 'Cybersecurity', 1450.00, 29
),
(
    8, 'James Anderson', 'San Diego', 'Web Development', 1250.00, 26
),
(
    9, 'Linda Thomas', 'Dallas', 'Data Science', 1580.00, 23
),
(
    10, 'Robert Jackson', 'San Jose', 'Cybersecurity', 1420.00, 31
);

UPDATE trainees SET stipend = stipend * 1.10 WHERE department = 'Data Science';
UPDATE trainees SET city= 'Remote' WHERE city IN ('New York', 'Los Angeles', 'Chicago');
DELETE FROM trainees WHERE trainee_id = 10;


Day3-Homework


CREATE DATABASE internship_analytics;

USE internship_analytics;

CREATE TABLE interns (
    intern_id INT PRIMARY KEY,
    intern_name VARCHAR(50),
    college VARCHAR(50),
    city VARCHAR(30),
    stipend DECIMAL(8,2),
    duration_months INT
);

INSERT INTO interns (intern_id, intern_name, college, city, stipend, duration_months)
VALUES
(1, 'Arun', 'ABC Engineering College', 'Kochi', 3500.00, 4),
(2, 'Meena', 'XYZ Institute', 'Trivandrum', 4500.00, 8),
(3, 'Rahul', 'Tech Valley College', 'Kollam', 2800.00, 3),
(4, 'Sneha', 'National Engineering College', 'Kozhikode', 5000.00, 10),
(5, 'Ajay', 'ABC Engineering College', 'Thrissur', 3200.00, 6),
(6, 'Divya', 'Future Tech College', 'Kannur', 6000.00, 12),
(7, 'Vivek', 'Global Institute', 'Alappuzha', 2500.00, 5),
(8, 'Anjali', 'City Engineering College', 'Palakkad', 4000.00, 7),
(9, 'Rohan', 'Modern College', 'Kottayam', 5500.00, 9),
(10, 'Priya', 'State Technical College', 'Pathanamthitta', 2900.00, 4),
(11, 'Nikhil', 'Royal Institute', 'Idukki', 7000.00, 11),
(12, 'Asha', 'Bright College', 'Malappuram', 3800.00, 6),
(13, 'Kiran', 'Metro College', 'Kasaragod', 4500.00, 8),
(14, 'Neha', 'Sunrise Institute', 'Kochi', 2700.00, 2),
(15, 'Arathi', 'Hill View College', 'Trivandrum', 5200.00, 9);

UPDATE interns
SET stipend = stipend + 1000
WHERE duration_months > 6;

UPDATE interns
SET college = 'Government Engineering College'
WHERE intern_id = 5;

DELETE FROM interns
WHERE stipend < 3000;
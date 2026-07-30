CREATE DATABASE college_analytics;
USE college_analytics;
CREATE TABLE students_marks (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    department VARCHAR(30),
    marks INT
);
INSERT INTO students_marks (student_id, student_name, department, marks) 
VALUES (

(1, 'Alice', 'Computer Science', 85),
(2, 'Bob', 'Mathematics', 90),
(3, 'Charlie', 'Physics', 78),
(4, 'David', 'Chemistry', 88),
(5, 'Eva', 'Biology', 92),
(6, 'Frank', 'Computer Science', 75),
(7, 'Grace', 'Mathematics', 95),
(8, 'Hannah', 'Physics', 80),
(9, 'Ian', 'Chemistry', 70),
(10, 'Jack', 'Biology', 85),
(11, 'Kathy', 'Computer Science', 82),
(12, 'Leo', 'Mathematics', 88),

);
SELECT * FROM students_marks;
SELECT department, AVG(marks) AS average_marks FROM students_marks GROUP BY department;
SELECT department,AVG(marks) AS average_marks FROM students_marks GROUP BY department ORDER BY average_marks DESC;


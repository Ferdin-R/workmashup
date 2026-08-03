CREATE DATABASE student_analytics;
USE student_analytics;
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    marks INT,
    stipend INT
);
INSERT INTO students (student_id, student_name, marks, stipend)
VALUES(1, 'Rahul', 78, 3000),
      (2, 'Anita', 85, 3500),
      (3, 'Karan', 65, 2500),
      (4, 'Neha', 92, 4000),
      (5, 'Amit', 70, 2800),
      (6, 'Pooja', 88, 3700),
      (7, 'Ravi', 60, 2000),
      (8, 'Sneha', 90, 4200);
SELECT * FROM students 
WHERE marks > (SELECT AVG(marks) FROM students);
SELECT * FROM students 
WHERE stipend > (SELECT MAX(stipend) FROM students);
SELECT student_id,student_name,marks,stipend,
(SELECT AVG(marks) FROM students) AS average_marks
FROM students;

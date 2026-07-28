Day5-Classwork

CREATE DATABASE education_analytics;
USE education_analytics;
CREATE TABLE students_enrollment_raw (
    student_id INT,
    student_name VARCHAR(50) NOT NULL,
    city VARCHAR(50) NOT NULL,
    course_name VARCHAR(50) NOT NULL,
    instructor VARCHAR(50) NOT NULL,
    instructor_phone VARCHAR(15) NOT NULL
);
INSERT INTO students_enrollment_raw (student_id, student_name, city, course_name, instructor, instructor_phone)
VALUES(

    (101, 'Aarav Sharma', 'Mumbai', 201, 'Database Systems', 301, 'Dr. Meera Nair'),
    (101, 'Aarav Sharma', 'Mumbai', 202, 'Operating Systems', 302, 'Prof. Rahul Menon'),
    (102, 'Diya Joseph', 'Delhi', 201, 'Database Systems', 301, 'Dr. Meera Nair'),
    (102, 'Diya Joseph', 'Delhi', 203, 'Computer Networks', 303, 'Dr. Anil Kumar'),
    (103, 'Rohan Das', 'Bangalore', 202, 'Operating Systems', 302, 'Prof. Rahul Menon'),
    (103, 'Rohan Das', 'Bangalore', 203, 'Computer Networks', 303, 'Dr. Anil Kumar'),
    (104, 'Ananya Nair', 'Chennai', 201, 'Database Systems', 301, 'Dr. Meera Nair'),
    (104, 'Ananya Nair', 'Chennai', 202, 'Operating Systems', 302, 'Prof. Rahul Menon')
);
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50) NOT NULL,
    city VARCHAR(50) NOT NULL
);
CREATE TABLE courses (
    course_name VARCHAR(50) NOT NULL,
    instructor VARCHAR(50) NOT NULL,
    instructor_phone VARCHAR(15) NOT NULL
);
CREATE TABLE enrollments (
    student_id INT,
    course_name VARCHAR(50) NOT NULL
);
INSERT INTO students (student_id, student_name, city)
VALUES(
    (101, 'Aarav Sharma', 'Mumbai'),
    (102, 'Diya Joseph', 'Delhi'),
    (103, 'Rohan Das', 'Bangalore'),
    (104, 'Ananya Nair', 'Chennai')
);
INSERT INTO courses (course_name, instructor, instructor_phone)
VALUES(
    ('Database Systems', 'Dr. Meera Nair', '301'),
    ('Operating Systems', 'Prof. Rahul Menon', '302'),
    ('Computer Networks', 'Dr. Anil Kumar', '303')
);
INSERT INTO enrollments (student_id, course_name)
VALUES(
    (101, 'Database Systems'),
    (101, 'Operating Systems'),
    (102, 'Database Systems'),
    (102, 'Computer Networks'),
    (103, 'Operating Systems'),
    (103, 'Computer Networks'),
    (104, 'Database Systems'),
    (104, 'Operating Systems')
);
SELECT * FROM students;
SELECT * FROM students WHERE student_id < 102 AND city = 'Mumbai';
SELECT * FROM courses WHERE instructor = 'Dr. Meera Nair' OR instructor = 'Prof. Rahul Menon';
SELECT * FROM students WHERE city IN ('Mumbai', 'Delhi');
SELECT * FROM STUDENTS WHERE NOT city = 'Bangalore';
SELECT * FROM students WHERE student_name LIKE 'A%';
SELECT * FROM students LIMIT 2;


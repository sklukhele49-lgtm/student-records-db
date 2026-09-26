-- Student Records Database Schema
-- Author: Sibonelo Lukhele
-- Date: 2026

CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    date_of_birth DATE,
    enrollment_date DATE DEFAULT CURRENT_DATE
);

CREATE TABLE courses (
    course_id SERIAL PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    course_code VARCHAR(10) UNIQUE NOT NULL,
    credits INT NOT NULL
);

CREATE TABLE enrollments (
    enrollment_id SERIAL PRIMARY KEY,
    student_id INT REFERENCES students(student_id),
    course_id INT REFERENCES courses(course_id),
    enrollment_date DATE DEFAULT CURRENT_DATE,
    grade VARCHAR(2)
);

-- Index for query optimization
CREATE INDEX idx_student_last_name ON students(last_name);

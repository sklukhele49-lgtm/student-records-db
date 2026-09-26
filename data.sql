

INSERT INTO students (first_name, last_name, email, date_of_birth)
VALUES
('Sibonelo', 'Lukhele', 'sibonelo@example.com', '2003-05-14'),
('Thabo', 'Mokoena', 'thabo@example.com', '2002-11-22'),
('Aisha', 'Patel', 'aisha@example.com', '2003-02-08'),
('Liam', 'van Wyk', 'liam@example.com', '2001-07-30'),
('Naledi', 'Dlamini', 'naledi@example.com', '2003-09-19');

INSERT INTO courses (course_name, course_code, credits)
VALUES
('Network Management', 'NET101', 12),
('Database Systems', 'DB201', 15),
('Cybersecurity Fundamentals', 'SEC110', 10),
('Cloud Computing', 'CLD301', 15);

INSERT INTO enrollments (student_id, course_id, grade)
VALUES
(1, 1, 'A'),
(1, 2, 'B'),
(2, 1, 'B'),
(3, 3, 'A'),
(4, 2, 'C'),
(5, 4, 'A');

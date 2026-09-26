SELECT * FROM students;

SELECT * FROM courses;

SELECT
    s.first_name,
    s.last_name,
    c.course_name,
    e.grade
FROM students s
JOIN enrollments e ON s.student_id = e.student_id
JOIN courses c ON e.course_id = c.course_id
ORDER BY s.last_name;

SELECT
    c.course_name,
    COUNT(e.student_id) AS total_students
FROM courses c
LEFT JOIN enrollments e ON c.course_id = e.course_id
GROUP BY c.course_name
ORDER BY total_students DESC;

SELECT
    s.first_name,
    s.last_name,
    c.course_name
FROM students s
JOIN enrollments e ON s.student_id = e.student_id
JOIN courses c ON e.course_id = c.course_id
WHERE e.grade = 'A';

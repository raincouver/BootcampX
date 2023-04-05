SELECT students.name as "Student Name",
AVG(assignment_submissions.duration) as "Average Assignment Duration"
FROM students
INNER JOIN assignment_submissions ON student_id = students.id
WHERE students.end_date IS NULL
GROUP BY students.name
ORDER BY AVG(assignment_submissions.duration) DESC;
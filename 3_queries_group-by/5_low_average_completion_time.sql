SELECT students.name as "Student Name",
AVG(assignment_submissions.duration) as "Average Assignment Duration",
AVG(assignments.duration) as "Average Suggested Duration"
FROM students
INNER JOIN assignment_submissions ON student_id = students.id
INNER JOIN assignments ON assignment_id = assignments.id
WHERE students.end_date IS NULL
GROUP BY students.name
HAVING AVG(assignment_submissions.duration) < AVG(assignments.duration)
ORDER BY AVG(assignment_submissions.duration) ASC;
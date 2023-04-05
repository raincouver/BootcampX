SELECT teachers.name as "Teacher",
students.name as "Student",
assignments.name as "Assignment",
assistance_requests.completed_at - assistance_requests.started_at as "Duration"
FROM assistance_requests
INNER JOIN students ON student_id = students.id
INNER JOIN teachers ON teacher_id = teachers.id
INNER JOIN assignments ON assignments.id = assignment_id
ORDER BY "Duration" ASC;
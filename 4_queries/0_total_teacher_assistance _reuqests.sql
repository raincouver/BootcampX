SELECT count(*) as "Total Requests",
teachers.name as "Teacher"
From assistance_requests
INNER JOIN teachers ON teacher_id = teachers.id
GROUP BY teachers.name
HAVING teachers.name = 'Waylon Boehm';
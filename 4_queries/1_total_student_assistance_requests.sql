SELECT count(*) as "Total Requests",
students.name as "Student"
From assistance_requests
INNER JOIN students ON student_id = students.id
GROUP BY students.name
HAVING students.name = 'Elliot Dickinson';
SELECT teachers.name as teacher,
cohorts.name as cohort,
count(assistance_requests.*) as total_assistances
FROM cohorts
INNER JOIN students ON cohort_id = cohorts.id
INNER JOIN assistance_requests ON student_id = students.id
INNER JOIN teachers ON teacher_id = teachers.id
WHERE cohorts.name = 'JUL02'
GROUP BY teacher, cohort
ORDER BY teacher;
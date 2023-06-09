SELECT cohorts.name, sum(completed_at - started_at) as total_duration
FROM assistance_requests
INNER JOIN students ON student_id = students.id
INNER JOIN cohorts ON cohort_id = cohorts.id
GROUP BY cohorts.name
ORDER BY total_duration ASC;
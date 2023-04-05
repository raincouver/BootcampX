SELECT assignments.id, name, day, chapter, count(*) as total_requests
FROM assignments
INNER JOIN assistance_requests ON assignment_id = assignments.id
GROUP BY assignments.id
ORDER BY total_requests DESC;
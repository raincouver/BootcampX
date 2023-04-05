SELECT day, count(assignments.*) as "Total Assignments"
FROM assignments
GROUP BY day
HAVING count(assignments.*) >= 10
ORDER BY day;
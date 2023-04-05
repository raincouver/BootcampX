SELECT day, count(assignments.*) as "Total Assignments"
FROM assignments
GROUP BY day
ORDER BY day;
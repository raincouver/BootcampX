SELECT cohorts.name, count(*) as "Total Students"
FROM cohorts 
INNER JOIN students ON cohort_id = cohorts.id
GROUP BY cohorts.name
HAVING count(*) >= 18
ORDER BY count(*) ASC;
SELECT 
u.id,
COUNT("userId") as educations
FROM educations AS e
JOIN users AS u
ON e."userId" = u.id
GROUP BY u.id 
ORDER BY u.id
;
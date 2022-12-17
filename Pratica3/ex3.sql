SELECT 
u.name AS writer,
COUNT(t."writerId") AS "testimonialCount"
FROM testimonials AS t
JOIN users AS u
ON t."writerId" = u.id
GROUP BY u.id
;
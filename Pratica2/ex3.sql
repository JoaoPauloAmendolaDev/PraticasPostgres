SELECT 
u.id AS id,
u.name AS name,
c.name AS course,
s.name AS school,
e."endDate" AS "endDate"
FROM educations AS e
JOIN users AS u
ON e."userId" = u.id
JOIN courses AS c 
ON e."courseId" = c.id
JOIN schools AS s 
ON e."schoolId" = s.id
WHERE e."userId" = 30 AND e.status = 'finished'
;
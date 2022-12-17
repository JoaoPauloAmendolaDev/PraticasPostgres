SELECT 
u.id AS id,
u.name AS name,
r.name AS role,
c.name AS company,
e."startDate" as startDate
FROM experiences AS e
JOIN users AS u
ON e."userId" = u.id
JOIN companies AS c
ON e."companyId" = c.id
JOIN roles AS r
ON e."roleId" = r.id
WHERE e."userId" = 50 AND e."endDate" is null
;
--  FINDING THE Longest Users
SELECT * 
FROM users
ORDER BY created_at
LIMIT 5;


-- Day most users join query
SELECT DAYNAME(created_at) AS DAYOFWEEK, COUNT(created_at) AS Total
FROM users
GROUP BY DAYOFWEEK
ORDER BY Total DESC
LIMIT 3;
--  FINDING THE Longest Users
SELECT * 
FROM users
ORDER BY created_at
LIMIT 5;


-- Day most users join query
SELECT DAYNAME(created_at) AS DAYOFWEEK, COUNT(*) AS Total
FROM users
GROUP BY DAYOFWEEK
ORDER BY Total DESC
LIMIT 2;

-- Find inactive Users
SELECT username 
FROM users 
JOIN photos ON users.id = photos.user_id 
WHERE photos.id IS NULL
LIMIT 10;




JOIN comments ON users.id = comments.user_id 
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

-- Find inactive Users with no pictures
SELECT username
FROM users
LEFT JOIN photos
    ON users.id = photos.user_id
WHERE photos.id IS NULL;

-- Find inactive Users with no pictures or comments
SELECT username 
FROM users 
LEFT JOIN photos 
    ON users.id = photos.user_id 
LEFT JOIN comments 
    ON users.id = comments.user_id
WHERE photos.id IS NULL AND comments.id IS NULL
LIMIT 10;


-- Most popular photo and who created it
SELECT  image_url, COUNT(photo_id) AS MOSTest
FROM likes
JOIN photos
    on likes.photo_id = photos.id
GROUP BY MOSTest
LIMIT 2;


 
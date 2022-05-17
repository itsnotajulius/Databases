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


-- Most popular photo
SELECT  photos.image_url, COUNT(likes.photo_id) AS MOSTest
FROM likes
JOIN photos
    on likes.photo_id = photos.id
GROUP BY likes.photo_id
ORDER BY MOSTest DESC
LIMIT 1;


-- Most liked photo and user who created it
SELECT 
    username,
    photos.id,
    photos.image_url, 
    COUNT(*) AS total
FROM photos
INNER JOIN likes
    ON likes.photo_id = photos.id
INNER JOIN users
    ON photos.user_id = users.id
GROUP BY photos.id
ORDER BY total DESC
LIMIT 1;


-- Calculate Average Number of photos per user
SELECT  (SELECT Count(*) FROM   photos) / 
        (SELECT Count(*) FROM   users) 
        AS avg; 
 

 SELECT AVG(*)
 FROM user
 JOIN photos
    ON photos.user_id = users.id;
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
 

-- Top 5 Hashtags
SELECT tags.tag_name, Count(*) AS total 
FROM photo_tags 
JOIN tags 
    ON photo_tags.tag_id = tags.id 
GROUP BY tags.id 
ORDER BY total DESC 
LIMIT 5; 

--  Find users that liked everything(BOTS)
SELECT *
FROM users
JOIN likes
    ON users.id = likes.users_id
LIMIT 10;






-- Finding Users that commented on everything or nothing in percentage to users
--Version 1
SELECT 100-100*(SELECT COUNT(DISTINCT user_id)
                FROM comments
                WHERE user_id NOT IN(   SELECT user_id 
                                        FROM likes 
                                        GROUP BY user_id
                                        HAVING count(photo_id)=((SELECT COUNT(*) FROM photos))
                                    )
        ) / (SELECT COUNT(*) FROM users) 
        AS 'The percentage(%)';


--Version 2
SELECT ROUND( (COUNT(*) / (SELECT COUNT(*) FROM users)*100) ,2) AS percent
FROM
(SELECT IFNULL(user_id,0) AS timess,COUNT(*) AS Count
FROM users 
LEFT JOIN comments
    ON users.id=comments.user_id
GROUP BY users.id
HAVING timess=0 OR count=(SELECT COUNT(*) FROM photos)) AS total;
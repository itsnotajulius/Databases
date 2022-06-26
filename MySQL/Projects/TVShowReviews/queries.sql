-- Showing all individual rating for series 

SELECT title, rating 
FROM series 
JOIN reviews ON series.id = reviews.series_id 
ORDER BY title LIMIT 14;



-- Showing average rating of series  from less popular

SELECT title, IFNULL(AVG(rating),0) AS avg_rating
FROM series
JOIN reviews ON series.id = reviews.series_id
GROUP BY series.id
ORDER BY avg_rating;
*/

-- Showing each reviewers rating

SELECT first_name, last_name, rating
FROM reviews
JOIN reviewers ON reviewers.id = reviews.reviewer_id;



-- Series that have no reviews

SELECT title AS unreviewed
FROM series
LEFT JOIN reviews ON series.id = reviews.series_id
WHERE rating IS NULL;


-- Show average rating per genre

SELECT genre, AVG(rating)
FROM series
JOIN reviews ON series.id = reviews.series_id
GROUP BY genre;


-- Getting data on our reviewers

SELECT first_name, last_name, COUNT(rating) AS 'Count', MIN(rating) AS 'MINs', MAX(rating) AS 'MAXs', AVG(rating) AS 'AVGs',
IF(COUNT(rating)>0,'ACTIVE','INACTIVE') AS STATUSs
FROM reviewers
JOIN reviews ON reviewers.id = reviews.reviewer_id
GROUP BY reviewers.id;



--  Show sereis with each user rating
SELECT title, rating, CONCAT_WS(' ',first_name,last_name) AS REVIEWER
FROM series 
JOIN reviews 
    ON series.id = reviews.series_id 
JOIN reviewers 
    ON reviewers.id = reviews.reviewer_id
ORDER BY title;    








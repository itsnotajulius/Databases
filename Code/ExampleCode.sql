/*
CREATE DATABASE soap_store;
*/



/*CREATE TABLE cats
    (
        name archar(100),
        age INT
    );
*/


/*
CREATE TABLE pastreis
    (
        name varchar(50),
        quantity INT
    );


DESC pastreis;
*/


/*
ALTER TABLE cats2 RENAME TO cats;
*/

/*
INSERT INTO cats (name, age) VALUE ('Draco',11);
*/

/*
SELECT * FROM cats;



INSERT INTO cats (name, age) VALUE ('Peanut', 2), ('Butter', 3), ('Jelly', 8);



CREATE DATABASE people_app;
USE people_app;
SELECT DATABASE();

CREATE TABLE people(
    first_name varchar(20),
    last_name varchar(20),
    age INT
);


SELECT * FROM people;


INSERT INTO people (last_name, first_name, age) VALUE('Belcher', 'Bob', 42);


SELECT * FROM people;


INSERT INTO people (first_name, last_name, age) VALUE('Matthew','Julies',26), ('CHane','Julies',26),('Angelo','Julies',26);


SELECT * FROM people;


USE cat_app;
SELECT * FROM cats;




CREATE TABLE employees    
(
    employees_id INT NOT NULL AUTO_INCREMENT,
    last_name varchar(50) NOT NULL,
    first_name varchar(50) NOT NULL,
    middle_name varchar(50) NOT NULL,
    age INT NOT NULL,
    current_status varchar(50) NOT NULL DEFAULT 'employed',
    PRIMARY KEY(employees_id)
);





SHOW TABLES;


INSERT INTO employees(first_name, last_name, age) VALUES
('Dora', 'Smith', 58);

SELECT * FROM employees;


DROP TABLE cats;
DROP TABLE cats2;
DROP TABLE cats3;
DROP TABLE employees;
DROP TABLE uncats;


CREATE TABLE cats 
  ( 
     cat_id INT NOT NULL AUTO_INCREMENT, 
     name   VARCHAR(100), 
     breed  VARCHAR(100), 
     age    INT, 
     PRIMARY KEY (cat_id) 
  ); 
  
INSERT INTO cats(name, breed, age) 
VALUES ('Ringo', 'Tabby', 4),
       ('Cindy', 'Maine Coon', 10),
       ('Dumbledore', 'Maine Coon', 11),
       ('Egg', 'Persian', 4),
       ('Misty', 'Tabby', 13),
       ('George Michael', 'Ragdoll', 9),
       ('Jackson', 'Sphynx', 7);



    
    
    
SELECT name, age FROM cats WHERE breed='Tabby';

SELECT name AS 'bum' FROM cats;


SELECT * FROM cats;

UPDATE cats SET name='Jack' WHERE name='Jackson';
UPDATE cats SET breed='British Shorthair' WHERE name='Ringo';
UPDATE cats SET age=12 WHERE breed='Maine Coon';

SELECT * FROM cats;


DELETE FROM cats WHERE name='egg';


SELECT * FROM cats;

DELETE FROM cats WHERE age=4;
DELETE FROM cats WHERE age=cat_id;
SELECT * FROM cats;




DELETE FROM cats;
SELECT * FROM cats;


SELECT database();

CREATE DATABASE shirt_db;

use shirt_db;

SELECT database();



CREATE TABLE shirts
  (
    shirt_id INT NOT NULL AUTO_INCREMENT,
    article VARCHAR(100),
    color VARCHAR(100),
    shirt_size VARCHAR(100),
    last_worn INT,
    PRIMARY KEY(shirt_id)
  );
 
DESC shirts;
 
INSERT INTO shirts(article, color, shirt_size, last_worn) VALUES
('t-shirt', 'white', 'S', 10),
('t-shirt', 'green', 'S', 200),
('polo shirt', 'black', 'M', 10),
('tank top', 'blue', 'S', 50),
('t-shirt', 'pink', 'S', 0),
('polo shirt', 'red', 'M', 5),
('tank top', 'white', 'S', 200),
('tank top', 'blue', 'M', 15);


SELECT * FROM shirts;
 
INSERT INTO shirts(color, article, shirt_size, last_worn) 
VALUES('purple', 'polo shirt', 'medium', 50);
 
SELECT * FROM shirts;





UPDATE shirts SET shirt_id=10, color='lol', shirt_size='S'  WHERE last_worn=0;

SELECT * FROM shirts; 




CREATE DATABASE book_shop;

USE book_shop;


CREATE TABLE books 
	(
		book_id INT NOT NULL AUTO_INCREMENT,
		title VARCHAR(100),
		author_fname VARCHAR(100),
		author_lname VARCHAR(100),
		released_year INT,
		stock_quantity INT,
		pages INT,
		PRIMARY KEY(book_id)
	);
 
INSERT INTO books (title, author_fname, author_lname, released_year, stock_quantity, pages)
VALUES
('The Namesake', 'Jhumpa', 'Lahiri', 2003, 32, 291),
('Norse Mythology', 'Neil', 'Gaiman',2016, 43, 304),
('American Gods', 'Neil', 'Gaiman', 2001, 12, 465),
('Interpreter of Maladies', 'Jhumpa', 'Lahiri', 1996, 97, 198),
('A Hologram for the King: A Novel', 'Dave', 'Eggers', 2012, 154, 352),
('The Circle', 'Dave', 'Eggers', 2013, 26, 504),
('The Amazing Adventures of Kavalier & Clay', 'Michael', 'Chabon', 2000, 68, 634),
('Just Kids', 'Patti', 'Smith', 2010, 55, 304),
('A Heartbreaking Work of Staggering Genius', 'Dave', 'Eggers', 2001, 104, 437),
('Coraline', 'Neil', 'Gaiman', 2003, 100, 208),
('What We Talk About When We Talk About Love: Stories', 'Raymond', 'Carver', 1981, 23, 176),
("Where I'm Calling From: Selected Stories", 'Raymond', 'Carver', 1989, 12, 526),
('White Noise', 'Don', 'DeLillo', 1985, 49, 320),
('Cannery Row', 'John', 'Steinbeck', 1945, 95, 181),
('Oblivion: Stories', 'David', 'Foster Wallace', 2004, 172, 329),
('Consider the Lobster', 'David', 'Foster Wallace', 2005, 92, 343);
*/



# SELECT CONCAT_WS(13,author_fname,author_lname,14) AS 'BIG Name', pages AS 'Waste of time' FROM books; 

# SELECT REPLACE(title, 'e', '3') FROM books;

# SELECT REPLACE(title, 'e','3') FROM 


# CREATE DATABASE book_shop;

# USE book_shop;

# SELECT CONCAT_WS
# (
#     ' ',author_lname,'is',CHAR_LENGTH(author_lname),'characters long'
# ) AS 'Sentence' FROM books

# SELECT UPPER(REVERSE('"Why does my cat look at me with such hatred?"'));


# SELECT REPLACE(title, ' ','->' ) FROM books;

# SELECT author_lname AS 'forwards', REVERSE(author_lname) AS 'forwards' FROM books;

# SELECT CONCAT(SUBSTRING(title, 1,10),'...') AS 'short title', CONCAT_WS(',' ,author_lname,author_fname) AS 'author', CONCAT_WS(' ',stock_quantity,'in stock')  AS 'quantity' FROM books;


# INSERT INTO books(title, author_fname, author_lname, released_year, stock_quantity, pages)
#     VALUES ('10% Happier', 'Dan', 'Harris', 2014, 29, 256), 
#            ('fake_book', 'Freida', 'Harris', 2001, 287, 428),
#            ('Lincoln In The Bardo', 'George', 'Saunders', 2017, 1000, 367);

# SELECT DISTINCT author_fname, author_lname FROM books;

# SELECT DISTINCT author_fname, author_lname AS 'Last' FROM books;

# SELECT * FROM books;

# SELECT DISTINCT title, stock_quantity FROM books ORDER BY 2 LIMIT 5; 

# SELECT DISTINCT title, stock_quantity FROM books ORDER BY 1 LIMIT 3; 

# SELECT DISTINCT title, stock_quantity FROM books ORDER BY 1,2 LIMIT 3; 

# SELECT DISTINCT title, stock_quantity FROM books ORDER BY 2,1 LIMIT 3; 

# SELECT author_fname, author_lname FROM books 
# ORDER BY author_lname, author_fname;

# SELECT author_fname, author_lname FROM books 
# ORDER BY author_lname;


# INSERT INTO books(title, author_fname, author_lname, released_year, stock_quantity, pages)
#     VALUES ('real_book', 'Cida', 'Harris', 2001, 287, 428);

# SELECT author_fname, author_lname FROM books 
# ORDER BY author_lname;

# SELECT DISTINCT author_fname, author_lname FROM books 
# ORDER BY author_lname, author_fname;

#  SELECT DISTINCT title, stock_quantity FROM books ORDER BY 1,2;

# SELECT DISTINCT title, stock_quantity FROM books ORDER BY 2,1;


# USE book_shop;


# SELECT title FROM books WHERE title LIKE 'the';

# SELECT title FROM books WHERE title LIKE '%r';

# SELECT title FROM books WHERE title LIKE '%Stories%';


# SELECT title, pages FROM books ORDER BY 2 DESC LIMIT 1;


# SELECT CONCAT_WS(' ',title ,'-', released_year) AS 'summary' FROM books ORDER BY released_year DESC LIMIT 3; 


# SELECT title, author_lname FROM books WHERE author_lname LIKE '% %';

# SELECT title, released_year, stock_quantity FROM books ORDER BY 3 DESC ,2 DESC LIMIT 3;

# SELECT title, author_lname FROM books ORDER BY 2,1;

# SELECT UPPER(CONCAT_WS(' ', 'MY FAVORITE AUTHOR IS',author_fname,author_lname)) FROM books ORDER BY author_lname, author_fname;


# SELECT COUNT(DISTINCT author_lname) FROM books;
# SELECT DISTINCT COUNT(author_lname) FROM books;

# SELECT COUNT(*) FROM books WHERE title LIKE '%the%';
# SELECT title, author_lname FROM books;

# SELECT title, author_lname FROM books GROUP BY author_lname;


# SELECT author_lname, COUNT(*) FROM books GROUP BY author_lname ORDER BY 2;

# SELECT author_fname, author_lname, COUNT(*) FROM books GROUP BY author_lname, author_fname ORDER BY 3;

# SELECT CONCAT_WS(' ',released_year,'had' ,COUNT(*),'books') FROM books GROUP BY released_year;


# SELECT MIN(pages) FROM books;
# SELECT MAX(pages) FROM books;
# SELECT MIN(released_year) FROM books;
# SELECT MAX(released_year) FROM books;

# SELECT MAX(released_year),title FROM books;
# SELECT title, released_year FROM books ORDER BY released_year DESC LIMIT 3;


# SELECT MAX(pages),title FROM books;
# SELECT title, pages FROM books ORDER BY pages DESC LIMIT 3;

# SELECT * FROM books WHERE pages = (SELECT MIN(pages) FROM books);

# SELECT * FROM books WHERE pages = (SELECT MAX(pages) FROM books);
# SELECT * FROM books ORDER BY pages DESC LIMIT 1;

# SELECT author_fname, author_lname, MIN(released_year) FROM books GROUP BY author_fname,author_lname ORDER BY 3;

# SELECT CONCAT_WS(' ',author_fname, author_lname), MAX(pages) AS 'longest book' FROM books GROUP BY author_fname,author_lname ORDER BY 2;



# SELECT SUM(pages) FROM books;

# SELECT CONCAT_WS(' ',author_fname, author_lname) AS 'Author', SUM(pages) FROM books GROUP BY author_fname,author_lname;
# SELECT CONCAT_WS(' ',author_fname, author_lname) AS 'Author', SUM(pages) FROM books GROUP BY author_lname,author_fname;

# SELECT AVG(released_year) FROM books; 

# SELECT released_year, AVG(stock_quantity) FROM books GROUP BY released_year; 

# SELECT COUNT(*) FROM books;

# SELECT released_year, COUNT(*) FROM books GROUP BY released_year;

# SELECT title, stock_quantity FROM books GROUP BY title;
# SELECT title, stock_quantity FROM books ORDER BY title;

# SELECT SUM(stock_quantity) FROM books;

# SELECT CONCAT_WS(' ',author_fname, author_lname) AS 'Author', AVG(released_year) AS 'avYEAR' FROM books GROUP BY author_lname,author_fname;

# SELECT CONCAT_WS(' ',author_fname,author_lname), MAX(title) FROM books GROUP BY author_lname,author_lname;

# SELECT * FROM books ORDER BY pages DESC LIMIT 1;

# SELECT CONCAT_WS(' ',author_fname,author_lname)  FROM books WHERE pages = (SELECT MAX(pages) FROM books);

# SELECT released_year AS 'year', COUNT(title), AVG(pages) FROM books GROUP BY released_year;


# CREATE TABLE inventory(
#     item_name VARCHAR(50) DEFAULT 'itemName',
#     price FLOAT,
#     quantity INT
# );

# SELECT NOW();

# SELECT CURDATE();

# SELECT DATE_FORMAT(NOW(),'%w');

# SELECT DATE_FORMAT(NOW(),'%m/%w/%y');

# SELECT DATE_FORMAT(NOW(),'%M %D at %h:%i');


# CREATE TABLE tweets3(
#     tweet_content VARCHAR(200),
#     username VARCHAR(25) NOT NULL,
#     time_created TIMESTAMP DEFAULT NOW() ON UPDATE NOW()
# );


# INSERT INTO tweets3(tweet_content,username) VALUES('Yoyo', 'Yo Momma');


# SELECT * FRoM tweets3;

# SELECT * FROM books WHERE released_year >= 2013;

# SELECT * FROM books WHERE released_year > 2013;

# SELECT * FROM books WHERE released_year < 2013;

# SELECT * FROM books WHERE released_year >= 2013;

# SELECT * FROM books WHERE title LIKE '%M%';
# SELECT * FROM books WHERE title NOT LIKE '%M%';


# SELECT title, author_fname,author_lname FROM books WHERE author_fname LIKE '%A%' AND author_fname LIKE '%D%'; 
# SELECT title, author_fname,author_lname FROM books WHERE author_fname LIKE '%A%' AND (author_fname LIKE '%D%' OR author_fname LIKE '%o%'); 
# SELECT title, author_fname,author_lname FROM books WHERE (author_fname LIKE '%A%' AND author_fname LIKE '%D%') OR author_fname LIKE '%o%'; 

# SELECT * FROM books WHERE released_year BETWEEN 2004 AND 2015 ORDER BY released_year;
# SELECT * FROM books WHERE released_year NOT BETWEEN 2004 AND 2015 ORDER BY released_year;


# SELECT * FROM books 
# WHERE author_lname LIKE '%Carver%' OR
# author_lname LIKE '%Lahiri%' OR
# author_lname LIKE '%Smith%';

# SELECT * FROM books 
# WHERE author_lname IN ('Carver', 'Lahiri' , 'Smith');

# SELECT * FROM books 
# WHERE author_lname NOT IN ('Carver', 'Lahiri' , 'Smith');

# SELECT MOD(7.5,3);

# SELECT * FROM books WHERE MOD(released_year,2) != 0;

# SELECT title, stock_quantity,
#     CASE    
#         WHEN stock_quantity BETWEEN 0 AND 90 THEN '*'
#         WHEN stock_quantity BETWEEN 91 AND 100 THEN '**'
#         ELSE '***'
#     END AS 'STOCK'
# FROM books;



# SELECT 10 != 10;
# SELECT 15 > 14 && 99 - 5 <= 94;
# SELECT 1 IN (5,3) || 9 BETWEEN 8 AND 10;
# SELECT 1 IN (5,3);

# SELECT * FROM books WHERE released_year < 1980;
# SELECT * FROM books WHERE author_lname = 'Eggers' OR author_fname = 'Chabon';
# SELECT * FROM books WHERE author_lname = 'Lahiri' AND released_year > 2000;
# SELECT * FROM books WHERE pages BETWEEN 100 AND 200;
# SELECT * FROM books WHERE author_lname LIKE 'C%' OR author_lname LIKE 'S%';

# SELECT title, author_lname, 
#     CASE
#         WHEN title LIKE '%stories%' THEN 'Short Stories'
#         WHEN title LIKE 'Just Kids' OR title LIKE 'A Heartbreaking Work' THEN 'Memoir'
#         ELSE 'Novel'
#     END AS 'TYPE'
# FROM books; 


# SELECT title, author_lname,
#     CASE
#         WHEN COUNT(*) = 1 THEN '1 book'
#         ELSE CONCAT_WS(' ', COUNT(*),'books')
#     END AS 'COUNT'
# FROM books 
# GROUP BY author_lname, author_fname;



# CREATE TABLE customers(
#     customer_id INT NOT NULL AUTO_INCREMENT,
#     first_name VARCHAR(100),
#     last_name VARCHAR(100) NOT NULL,
#     email VARCHAR(100),
#     PRIMARY KEY (customer_id)
# );

# CREATE TABLE orders(
#     order_id INT NOT NULL AUTO_INCREMENT,
#     order_date DATE,
#     amount DECIMAL(8,2),
#     customer_id INT,
#     PRIMARY KEY (order_id),
#     FOREIGN KEY(customer_id) REFERENCES customers(customer_id)
# ); 

# INSERT INTO orders(order_id,order_date,amount,customer_id) VALUES(1,'2022-05-09',355.2,1);


# INSERT INTO customers (first_name, last_name, email) 
# VALUES ('Boy', 'George', 'george@gmail.com'),
#        ('George', 'Michael', 'gm@gmail.com'),
#        ('David', 'Bowie', 'david@gmail.com'),
#        ('Blue', 'Steele', 'blue@gmail.com'),
#        ('Bette', 'Davis', 'bette@aol.com');
       
     
       
# INSERT INTO orders (order_date, amount, customer_id)
# VALUES ('2016/02/10', 99.99, 1),
#        ('2017/11/11', 35.50, 1),
#        ('2014/12/12', 800.67, 2),
#        ('2015/01/03', 12.50, 2),
#        ('1999/04/11', 450.25, 5);       
       
       

# SELECT * FROM orders WHERE customer_id = (SELECT customer_id FROM customers WHERE last_name ='George');


# SELECT * FROM customers, orders WHERE customers.customer_id = orders.customer_id AND customers.customer_id=1;

# SELECT * FROM customers JOIN orders ON customers.customer_id = orders.customer_id AND customers.customer_id =1;
# SELECT * FROM customers LEFT JOIN orders ON customers.customer_id = orders.customer_id;

# SELECT first_name,last_name, order_date, SUM(amount) FROM customers JOIN orders ON customers.customer_id = orders.customer_id GROUP BY customers.customer_id;

# SELECT first_name,last_name, IFNULL(SUM(amount),0) AS 'total' FROM customers LEFT JOIN orders ON customers.customer_id = orders.customer_id GROUP BY customers.customer_id ORDER BY total;

# SELECT * FROM customers RIGHT JOIN orders USING (customer_id);
# SELECT * FROM customers LEFT JOIN orders USING (customer_id);
# SELECT * FROM orders RIGHT JOIN customers USING (customer_id);

# SELECT * FROM customers;




# CREATE TABLE orders2(
#     order_id INT NOT NULL AUTO_INCREMENT,
#     order_date DATE,
#     amount DECIMAL(8,2),
#     customer_id INT,
#     PRIMARY KEY (order_id)
    
# ); 


# INSERT INTO orders2 (order_date, amount, customer_id)
# VALUES ('2016/02/10', 99.99, 1),
#        ('2017/11/11', 35.50, 1),
#        ('2014/12/12', 800.67, 2),
#        ('2015/01/03', 12.50, 2),
#        ('1999/04/11', 450.25, 5),
#        ('2015/01/03', 1.50, 108),
#        ('2015/01/03', 156.50, 18);  



# SELECT first_name, last_name, order_date, amount FROM customers,orders2;
# SELECT 
#     IFNULL(first_name,'Unknown') AS first_names,
#     IFNULL(last_name,'User') AS last_names,
#     order_date,
#     SUM(amount)
# FROM customers 
# RIGHT JOIN orders2 
#     ON customers.customer_id = orders2.customer_id 
# GROUP BY orders2.customer_id;

# CREATE TABLE students(
#     id INT NOT NULL AUTO_INCREMENT,
#     first_name VARCHAR(50) DEFAULT 'Unknown',
#     PRIMARY KEY(id)
# );

# CREATE TABLE papers2(
#     student_id INT,
#     title VARCHAR(100) DEFAULT 'Unknown',
#     grade INT(100),
#     FOREIGN KEY(student_id) REFERENCES students(id)
#         ON DELETE CASCADE
# );


# INSERT INTO students (first_name) VALUES 
# ('Caleb'), ('Samantha'), ('Raj'), ('Carlos'), ('Lisa');

# INSERT INTO papers2 (student_id, title, grade ) VALUES
# (1, 'My First Book Report', 60),
# (1, 'My Second Book Report', 75),
# (2, 'Russian Lit Through The Ages', 94),
# (2, 'De Montaigne and The Art of The Essay', 98),
# (4, 'Borges and Magical Realism', 89),
# (5, 'Magical Realism', 101);

# INSERT INTO papers2 (student_id, title, grade ) VALUES
# (1, 'My First Book Report', 60),
# (1, 'My Second Book Report', 75),
# (2, 'Russian Lit Through The Ages', 94),
# (2, 'De Montaigne and The Art of The Essay', 98),
# (4, 'Borges and Magical Realism', 89),
# (5, 'Magical Realism', 101);


# CREATE TABLE students(
#     id INT NOT NULL AUTO_INCREMENT,
#     first_name VARCHAR(50) DEFAULT 'Unknown',
#     PRIMARY KEY(id)
# );


# CREATE TABLE papers2(
#     student_id INT,
#     title VARCHAR(100) DEFAULT 'Unknown',
#     grade INT,
#     CHECK (grade<=101),
#     FOREIGN KEY (student_id) REFERENCES students(id) ON DELETE CASCADE
    
# );


# CREATE TABLE papers2(
#     student_id INT,
#     title VARCHAR(100) DEFAULT 'Unknown',
#     grade INT(100),
#     FOREIGN KEY(student_id) REFERENCES students(id)
#         ON DELETE CASCADE
# );





# INSERT INTO papers2 (student_id, title, grade ) VALUES
# (1, 'My First Book Report', 60),
# (1, 'My Second Book Report', 75),
# (2, 'Russian Lit Through The Ages', 94),
# (2, 'De Montaigne and The Art of The Essay', 98),
# (4, 'Borges and Magical Realism', 89),
# (5, 'Magical Realism', 101);


# INSERT INTO papers2 (student_id, title, grade ) VALUES
# (5, 'Boys', 102);

# CREATE TABLE Persons (
#     ID int NOT NULL,
#     LastName varchar(255) NOT NULL,
#     FirstName varchar(255),
#     Age int,
#     CHECK (Age>=18)
# );




# INSERT INTO Persons(ID,LastName,FirstName,age) VALUES(1,'Lool','First',19);

# SELECT first_name,title,grade FROM students JOIN papers2 ON students.id = papers2.student_id ORDER BY grade DESC;

# SELECT first_name,title,grade FROM students RIGHT JOIN papers2 ON students.id = papers2.student_id ORDER BY grade DESC;

# SELECT first_name,IFNULL(title, "Missing"), IFNULL(grade,0) FROM students LEFT JOIN papers2 ON students.id = papers2.student_id;

# SET @temps = 'BIRDie Fly!562%*)^&^&^👀'; 
# SELECT CHAR_LENGTH(@temps);
# SELECT LENGTH(@temps);


SELECT first_name, IFNULL(title, 'MISSING'), IFNULL(AVG(grade),0) AS average FROM students LEFT JOIN papers2 ON students.id = papers2.student_id GROUP BY students.id ORDER BY average DESC;


SELECT first_name, IFNULL(AVG(grade),0) AS average,
                                        CASE
                                            WHEN AVG(grade)>=75 THEN 'PASSING'
                                            WHEN AVG(grade) IS NULL THEN 'PASSING'
                                            ELSE 'FAIL'
                                        END AS passing_status
FROM students
LEFT JOIN papers2
ON students.id = papers2.student_id
GROUP BY students.id
ORDER BY average DESC;






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








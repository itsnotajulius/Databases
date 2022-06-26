CREATE DATABASE trigger_demo;

USE trigger_demo;

CREATE TABLE user(
    user VARCHAR(100)  NOT NUll DEFAULT "Steve",
    age INT
);

ALTER TABLE user RENAME users; 

INSERT INTO users(user, age) VALUES("Matthew",26), ("Rose",17); -- Will work


source users_trigger.sql

/*
DROP TRIGGER users.must_be_adult;
*/


INSERT INTO users(user, age) VALUES("Bruce",27), ("Clark",16); --Wont Work


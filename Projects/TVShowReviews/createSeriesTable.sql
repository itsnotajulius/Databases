CREATE TABLE series(
    id INT AUTO_INCREMENT,
    title VARCHAR(100) DEFAULT 'UNKNOWN',
    released_year YEAR(4) ,
    genre VARCHAR(100) DEFAULT 'ANY',
    PRIMARY KEY(id)
);
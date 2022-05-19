CREATE TABLE users(
    email VARCHAR(255),
    created_at TIMESTAMP DEFAULT NOW(),
    PRIMARY KEY(email)
);

INSERT INTO users (email) VALUES('lkasl@gmail.com'),('Bob@gmail.com');

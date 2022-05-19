CREATE TABLE users(
    email VARCHAR(255),
    created_at TIMESTAMP DEFAULT NOW(),
    PRIMARY KEY(email)
);

INSERT INTO (email) VALUES('lkasl@gmail.com'),('Bob@gmail.com');

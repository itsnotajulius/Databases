CREATE TABLE reviews(
    id INT AUTO_INCREMENT,
    rating DECIMAL(2,1),
    series_id INT NOT NULL,
    reviewer_id INT NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(reviewer_id) REFERENCES reviewers(id),
    FOREIGN KEY(series_id) REFERENCES series(id)
);

 
    
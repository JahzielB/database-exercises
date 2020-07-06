USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE IF NOT EXISTS albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    author VARCHAR(100),
    name VARCHAR(100),
    release_date INT,
    sales FLOAT(7,0),
    genre VARCHAR(100),
    PRIMARY KEY (id)
);
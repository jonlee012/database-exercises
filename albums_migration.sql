USE codeup_test_db;

DROP TABLE IF EXISTS albums;
CREATE TABLE IF NOT EXISTS albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(50) DEFAULT 'NONE',
    record_name  VARCHAR(100) NOT NULL,
    release_date INT UNSIGNED,
    sales FLOAT,
    genre TEXT NOT NULL,
    PRIMARY KEY (id),
    UNIQUE (artist, record_name)
);
-- DESCRIBE albums;
--
-- INSERT INTO albums (artist_name, record_name, genre)
-- VALUES ('Dream Theater','Metropolis Part 2', 'Progressive Rock');
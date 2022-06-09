USE codeup_test_db;

SELECT 'Release date after 91' AS 'release_date';
DELETE FROM albums WHERE release_date > 1991;

SELECT 'Disco songs' AS 'disco';
DELETE FROM albums WHERE genre = 'Disco';

SELECT 'Whitney Houston songs' AS 'whitney';
DELETE FROM albums WHERE artist = 'Whitney Houston';
USE codeup_test_db;
DESCRIBE albums;
ALTER TABLE albums ADD UNIQUE INDEX unique_album_artist (artist, name);
SELECT * FROM albums;
INSERT INTO albums (artist, name) VALUES ('Michael Jackson', 'Thriller');
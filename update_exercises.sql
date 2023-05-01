USE bigfoot_test_db;
-- Get all albums in the table
SELECT * FROM albums;
SELECT * FROM albums WHERE release_date < 1980;
SELECT * FROM albums WHERE artist = 'Michael Jackson';

UPDATE albums SET sales = sales * 10;
UPDATE albums SET release_date = release_date - 100 WHERE release_date < 1980;
UPDATE albums SET artist = 'Peter Jackson' WHERE artist = 'Michael Jackson';

Select * From albums;
SELECT * FROM albums WHERE artist = 'Peter Jackson';



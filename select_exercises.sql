USE bigfoot_test_db;

SELECT * FROM albums WHERE artist = 'Pink Floyd';
SELECT release_date AS "Year Released" FROM albums WHERE name = "Sgt. Pepper's Lonely Hearts Club Band";
SELECT genre AS "Album Genre" FROM albums WHERE name = "Nevermind";
SELECT name AS "Album Name", artist AS "Artist Name", release_date AS "Release Year" FROM albums WHERE release_date BETWEEN 1990 AND 1999;
SELECT name AS "Album Name", artist AS "Artist Name", sales AS "Certified Sales (Millions)" FROM albums WHERE sales < 20;
SELECT name AS "Album Name", artist AS "Artist Name", genre AS "Album Genre" FROM albums WHERE genre = 'Rock';



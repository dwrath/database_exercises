USE bigfoot_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
                        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                        artist VARCHAR(255) NOT NULL,
                        name VARCHAR(255) NOT NULL,
                        release_date INT NOT NULL,
                        sales FLOAT NOT NULL,
                        genre VARCHAR(255) NOT NULL,
                        PRIMARY KEY (id)
);
CREATE USER 'codeup_test_user'@'localhost' IDENTIFIED BY '123';
GRANT ALL PRIVILEGES ON bigfoot_test_db.* TO 'codeup_test_user'@'localhost' WITH GRANT OPTION;

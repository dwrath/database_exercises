USE bigfoot_test_db;

DROP TABLE IF EXISTS users;

CREATE TABLE users (
    user_id  INT UNSIGNED NOT NULL AUTO_INCREMENT,
    username VARCHAR(35)  NOT NULL,
    email    VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    PRIMARY KEY (user_id)
);

INSERT INTO users (username, email, password)
VALUES ('joe', 'joe@example.com', '123');
INSERT INTO users (username, email, password)
VALUES ('anne', 'anne@example.com', '123');
INSERT INTO users (username, email, password)
VALUES ('jean', 'jean@example.com', '123');

GRANT ALL PRIVILEGES ON bigfoot_test_db.* TO 'anne'@'localhost' IDENTIFIED BY '123' WITH GRANT OPTION;
REVOKE GRANT OPTION ON bigfoot_test_db.* FROM 'anne'@'localhost';
GRANT SELECT ON bigfoot_test_db.* TO 'jean'@'localhost';

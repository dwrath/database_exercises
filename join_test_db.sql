CREATE TABLE roles (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       name VARCHAR(100) NOT NULL,
                       PRIMARY KEY (id)
);
DROP TABLE IF EXISTS users;
CREATE TABLE users (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       name VARCHAR(100) NOT NULL,
                       email VARCHAR(100) NOT NULL,
                       role_id INT UNSIGNED DEFAULT NULL,
                       PRIMARY KEY (id),
                       FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

INSERT INTO users (name, email, role_id) VALUES
                                             ('bob', 'bob@example.com', 1),
                                             ('joe', 'joe@example.com', 2),
                                             ('sally', 'sally@example.com', 3),
                                             ('adam', 'adam@example.com', 3),
                                             ('jane', 'jane@example.com', null),
                                             ('mike', 'mike@example.com', null),
                                             ('jasmine', 'jasmine@example.com', 2),
                                             ('malik', 'malik@example.com', 2),
                                             ('jessica', 'jessica@example.com',2),
                                             ('james', 'james@example.com',null);

SELECT users.name as name, roles.name as role
FROM users JOIN roles ON users.role_id = roles.id;

SELECT users.name as name, roles.name as role
FROM users LEFT JOIN roles ON users.role_id = roles.id;
SELECT users.name as name, roles.name as role
FROM users RIGHT JOIN roles ON users.role_id = roles.id;

SELECT roles.name, COUNT(users.id) AS user_count
FROM roles JOIN users ON users.role_id = roles.id GROUP BY roles.id;
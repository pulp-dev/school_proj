DROP TABLE IF EXISTS rules;

CREATE TABLE rules
(
	id bigint UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	rule_type varchar(50) NOT NULL,
	rule_name varchar(100) NOT NULL,
	rule_text varchar(4096) NOT NULL
)

DROP TABLE IF EXISTS imges;

CREATE TABLE imges
(
	id bigint UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	img_path varchar(100) UNIQUE NOT NULL,
	rule_id bigint UNSIGNED,
	FOREIGN KEY (rule_id) REFERENCES rules (id)
)

DROP TABLE IF EXISTS users;

CREATE TABLE users
(
	id bigint UNSIGNED PRIMARY KEY,
	first_name varchar(100) NOT NULL,
	last_name varchar(100) NOT NULL
)

DROP TABLE IF EXISTS liked;

CREATE TABLE liked
(
	user_id bigint UNSIGNED NOT NULL,
	rule_id bigint UNSIGNED NOT NULL,
	FOREIGN KEY (user_id) REFERENCES users (id),
	FOREIGN KEY (rule_id) REFERENCES rules (id)
)

DROP TABLE IF EXISTS exercises;

CREATE TABLE exercises
(
	id bigint UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	ex_type varchar(60) NOT NULL,
	ex_text varchar(4096) NOT NULL,
	answer varchar(4096) NOT NULL
)


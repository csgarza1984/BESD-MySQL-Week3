CREATE DATABASE IF NOT EXISTS social_app;
USE social_app;
DROP TABLE IF EXISTS post_comments;
DROP TABLE IF EXISTS posts;
DROP TABLE IF EXISTS users;
CREATE TABLE users(
	id int(11) NOT NULL AUTO_INCREMENT,
	username varchar(40) NOT NULL,
	email varchar(40) NOT NULL,
	password varchar(20) NOT NULL,
	PRIMARY KEY (id)
	);
CREATE TABLE posts(
	id int(11) NOT NULL AUTO_INCREMENT,
	user_id_fx int(11) NOT NULL,
	post longtext NOT NULL,
	post_time datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (id),
	FOREIGN KEY (user_id_fx) REFERENCES users(id)
	);
CREATE TABLE post_comments(
	id int(11) NOT NULL AUTO_INCREMENT,
	user_id_fx int(11) NOT NULL,
	post_id_fx int(11) NOT NULL,
	comment mediumtext NOT NULL,
	comment_time datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (id),
	FOREIGN KEY (user_id_fx) REFERENCES users(id),
	FOREIGN KEY (post_id_fx) REFERENCES posts(id)
	);
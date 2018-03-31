CREATE DATABASE IF NOT EXISTS `codelytv_pro`;

USE codelytv_pro;

CREATE TABLE IF NOT EXISTS `users`
(
	`id` INT(10) PRIMARY KEY AUTO_INCREMENT,
	`name` VARCHAR(255) NOT NULL,
	`lastname` VARCHAR(255) NOT NULL
);

INSERT INTO users (id, name, lastname) VALUES (1, "Jose", "Armesto");
INSERT INTO users (id, name, lastname) VALUES (2, "Javier", "Ferrer");
INSERT INTO users (id, name, lastname) VALUES (3, "Rafa", "Gómez");

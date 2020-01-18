DROP DATABASE IF EXISTS burgers_db;
CREATE DATABASE burgers_db;

USE burgers_db;

CREATE TABLE burgers(
    id int NOT NULL AUTO_INCREMENT,
    burger_name VARCHAR(255) NOT NULL,
    devoured BOOLEAN DEFAULT false,
    PRIMARY KEY(id)
);

INSERT INTO burgers (burger_name) VALUES ("Chile-Cheeseburger");
INSERT INTO burgers (burger_name) VALUES ("Chicken Turkey Burger");
INSERT INTO burgers (burger_name) VALUES ("Black Bean Burger");
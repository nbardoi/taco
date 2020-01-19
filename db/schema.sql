DROP DATABASE IF EXISTS tacos_db;
CREATE DATABASE tacos_db;

USE tacos_db;

CREATE TABLE tacos(
    id int NOT NULL AUTO_INCREMENT,
    taco_name VARCHAR(255) NOT NULL,
    devoured BOOLEAN DEFAULT false,
    PRIMARY KEY(id)
);

INSERT INTO tacos (taco_name) VALUES ("Trailer Park Taco");
INSERT INTO tacos (taco_name) VALUES ("Potato, Egg, & Cheese Taco");
INSERT INTO tacos (taco_name) VALUES ("Chicken Fajita Taco");

SELECT * FROM tacos
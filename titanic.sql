DROP DATABASE IF EXISTS titanic_passengersDB;
CREATE DATABASE titanic_passengersDB;

USE titanic_passengersDB;

CREATE TABLE passengers(
  id INT NOT NULL AUTO_INCREMENT,
  passenger VARCHAR(45) NULL,
  wealth VARCHAR(45) NULL,
  survival VARCHAR(45) NULL,
  PRIMARY KEY (id)
);

INSERT INTO passengers (passenger, wealth, survival)
VALUES ("Molly Brown", "First class", "lived");

INSERT INTO passengers (passenger, wealth, survival)
VALUES ("Lily Hammersmith", "Second class", "lived");

INSERT INTO passengers (passenger, wealth, survival)
VALUES ("Charles Branson", "Third class", "died");

INSERT INTO passengers (passenger, wealth, survival)
VALUES ("Maria Larson", "Third class", "died");

INSERT INTO passengers (passenger, wealth, survival)
VALUES ("Jack Sparrow", "Third class", "died");

INSERT INTO passengers (passenger, wealth, survival)
VALUES ("Travis O'Connor", "First class", "died");

INSERT INTO passengers (passenger, wealth, survival)
VALUES ("Francis Black", "Third class", "lived");

INSERT INTO passengers (passenger, wealth, survival)
VALUES ("Dean LeFaoux", "First class", "lived");
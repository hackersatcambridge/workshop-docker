CREATE DATABASE jupyterdata;

USE jupyterdata;

CREATE USER 'jupyter'@'%' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON jupyterdata.* TO 'jupyter'@'%';

CREATE TABLE WHALE (
	id INT(10) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(32) UNIQUE,
	length_min DECIMAL(3, 1),
	length_max DECIMAL(3, 1)
);

INSERT INTO WHALE (name, length_min, length_max)
VALUES ('narwhal', 3.9, 4.6);
INSERT INTO WHALE (name, length_min, length_max)
VALUES ('sperm whale', 10.7, 18.3);
INSERT INTO WHALE (name, length_min, length_max)
VALUES ('beluga', 3.9, 4.6);
INSERT INTO WHALE (name, length_min, length_max)
VALUES ('humpback', 12.8, 15.2);
INSERT INTO WHALE (name, length_min, length_max)
VALUES ('orca', 7.0, 9.4);
INSERT INTO WHALE (name, length_min, length_max)
VALUES ('finback', 21.9, 25.0);
INSERT INTO WHALE (name, length_min, length_max)
VALUES ('blue whale', 21.0, 27.4);

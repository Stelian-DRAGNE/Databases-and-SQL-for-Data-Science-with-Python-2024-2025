SHOW DATABASES;

CREATE DATABASE baza_de_date_1; 

-- CREATE DATABASE baza_de_date_1; 
# SHOW DATABASES;

CREATE DATABASE baza_de_date_2;

SHOW DATABASES;

DROP DATABASE baza_de_date_2;

CREATE DATABASE baza_de_date_2;

SHOW DATABASES;

CREATE DATABASE IF NOT EXISTS baza_de_date_3;
DROP DATABASE IF EXISTS baza_de_date_3;

CREATE DATABASE IF NOT EXISTS baza_de_date_3;

SHOW DATABASES;

show databases;

USE baza_de_date_1;
CREATE TABLE calorii (nr_crt INT, calorii INT);

DROP TABLE IF EXISTS calorii;

CREATE TABLE IF NOT EXISTS calorii (nr_crt INT, calorii INT);

INSERT INTO calorii VALUES (1, 2500);

SELECT * FROM calorii;

INSERT INTO calorii VALUES (2, 3000);

SELECT * FROM calorii;

INSERT INTO calorii VALUES (3500, 3);

SELECT * FROM calorii;

INSERT INTO calorii SET nr_crt = 4, calorii = 1900;
SELECT * FROM calorii;

INSERT INTO calorii SET calorii = 2223;
SELECT * FROM calorii;

DROP TABLE IF EXISTS calorii;

INSERT INTO calorii SET calorii = 2223;
SELECT * FROM calorii;
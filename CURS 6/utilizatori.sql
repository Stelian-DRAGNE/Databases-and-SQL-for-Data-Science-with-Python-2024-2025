SHOW DATABASES;

-- DROP DATABASE social_media;
CREATE DATABASE social_media;
USE social_media;
CREATE TABLE utilizator (id INT PRIMARY KEY AUTO_INCREMENT, nume VARCHAR(255));

CREATE TABLE postare 
(id INT PRIMARY KEY AUTO_INCREMENT, 
titlu VARCHAR(255), 
id_user INT, 
FOREIGN KEY (id_user) REFERENCES utilizator(id));

INSERT INTO utilizator (nume) VALUES ('albatros'), ('bibilic'), ('coif'), ('dormitor');
SELECT * FROM utilizator;

INSERT INTO postare (titlu, id_user) VALUES
	('Vacanta', 1),
    ('Amuzant', 3),
    ('Gluma de seara', 3),
    ('Neverosimil', 4),
    ('A ramas interzis', 1),
    ('Cat e cozonacul ?', 3),
    ('Cand cade 1 Mai ?', 4);
    
SELECT * FROM postare;
SELECT COUNT(*) AS 'Nr. postari' FROM postare;

SELECT * FROM utilizator;
SELECT * FROM postare;

SELECT COUNT(*) FROM utilizator JOIN postare;
SELECT * FROM utilizator JOIN postare;

SELECT * FROM postare JOIN utilizator;

SELECT * FROM postare JOIN utilizator ON postare.id_user = utilizator.id;
SELECT * FROM utilizator JOIN postare ON utilizator.id = postare.id_user;

SELECT * FROM postare JOIN utilizator ON postare.id_user = utilizator.id;
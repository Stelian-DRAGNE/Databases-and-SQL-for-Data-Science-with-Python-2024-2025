 DROP DATABASE IF EXISTS magazin_online;
 CREATE DATABASE IF NOT EXISTS magazin_online;
 USE magazin_online;
 
#Tabela adrese
CREATE TABLE IF NOT EXISTS adresa
(id int unique auto_increment primary key,
strada char(20),
oras char(20));
 
#Tabela clienti
CREATE TABLE IF NOT EXISTS client
(id int unique auto_increment primary key,
denumire char(50),
adresa_id int,
INDEX (adresa_id),
FOREIGN KEY (adresa_id) REFERENCES adresa(id));
 
#Tabela comenzi
 CREATE TABLE IF NOT EXISTS comanda
(id int unique auto_increment primary key,
data date,
client_id int,
INDEX (client_id),
FOREIGN KEY (client_id) REFERENCES client(id));
 
#Tabela articole
 CREATE TABLE IF NOT EXISTS articol
(id int unique auto_increment primary key,
descriere char(40),
pret  float);
 
# Tabela de legatura dintre comenzi si articole (un articol poate sa apara in mai multe comenzi, o comanda are mai
#multe articole
 CREATE TABLE IF NOT EXISTS comanda_articol
(id int unique auto_increment primary key,
comanda_id int,
articol_id int,
cantitate int,
INDEX (comanda_id),
INDEX (articol_id),
FOREIGN KEY (comanda_id) REFERENCES comanda(id),
FOREIGN KEY (articol_id) REFERENCES articol(id));
-- Popularea tabelelor cu date

INSERT INTO adresa (strada, oras) VALUES
('Magheru', 'Bucuresti'),
('Brasov',  'Bucuresti'),
('Elisabeta', 'Bucuresti'),
('Maniu', 'Brasov'),
('Aviatorilor', 'Bucuresti'),
('Balcescu', 'Buzau'),
('Mihalache', 'Bucuresti'),
('Horea', 'Cluj Napoca'),
('Macaralei', 'Barlad'),
('Minerului', 'Petrosani');
 
##
INSERT INTO client (denumire, adresa_id) VALUES
('SC LEON SRL', 1),
('GEOMIL', 2),
('LIBERTY', 3),
('MINERON', 10),
('AEROFUN', 4),
('MEDITEL', 5);
 
##
INSERT INTO comanda (data, client_id) VALUES
('2023-4-8', 1),
('2023-4-8', 1),
('2023-4-7', 2),
('2022-4-8', 2),
('2022-4-9', 3),
('2022-4-8', 4),
('2021-4-8', 5);
 
##
INSERT INTO articol (descriere, pret) VALUES
('stilou', 5),
('pix bila', 4),
('creion', 0.5),
('marker', 2),
('guma', 0.75),
('rigla', 1),
('echer', 1),
('penar', 2),
('top hartie', 9.5),
('top hartie gloss', 9.5),
('cutie cerneala', 2.25);
 
##
INSERT INTO comanda_articol (comanda_id, articol_id, cantitate) VALUES
 
(1,1,10),
(1,2,10),
(1,3,10),
  
(2,4,2),
(2,5,4),
(2,6,12),
 
(3,8,20),
(3,5,42),
  
(4,1,20),
(4,2,40),
(4,3,20),
(4,4,40),
(4,5,20),
(4,6,20),
 
(5,1,100),
(5,7,200),
 
(6,2,25),
(6,6,25),
(7,3,100);


-- 1. Calculati numarul de comenzi
SELECT * FROM comanda;
SELECT COUNT(*) FROM comanda;
SELECT COUNT(*) AS 'Nr. comenzi' FROM comanda;

-- 2. Calculati numarul de adrese ale clientilor din Bucuresti
SELECT * FROM adresa;
SELECT oras FROM adresa;
SELECT oras FROM adresa WHERE oras = 'Bucuresti';
SELECT COUNT(oras) FROM adresa WHERE oras = 'Bucuresti';
SELECT COUNT(oras) AS 'Adrese din Bucuresti' FROM adresa WHERE oras = 'Bucuresti';

-- 3. Calculati numarul de ora~e diferite din toate adresele
SELECT oras FROM adresa;
SELECT DISTINCT oras FROM adresa;
SELECT COUNT(DISTINCT oras) FROM adresa;
SELECT COUNT(DISTINCT oras) 'Orase diferite' FROM adresa;

-- 4. Calculati numarul de preturi diferite dintre toate articolele
SELECT * FROM articol;
SELECT pret FROM articol;
SELECT COUNT(DISTINCT pret) AS 'Nr. preturi diferite' FROM articol;

-- 5. Calculati numarul de ora~e din toate adresele al caror nume incepe cu litere diferite
SELECT DISTINCT oras FROM adresa;

-- primul 1 -> a cata litera (numerotarea incepe de la 1)
-- al doilea 1 -> cate litere
SELECT SUBSTR(oras, 1, 1) FROM adresa;
-- primele 3 litere
SELECT SUBSTR(oras, 1, 3) FROM adresa;
-- 3 litere incepand cu a doua
SELECT SUBSTR(oras, 2, 3) FROM adresa;

SELECT LEFT(oras, 1) FROM adresa;

SELECT LEFT(oras, 3) FROM adresa;

SELECT COUNT(DISTINCT LEFT(oras, 1)) AS 'Nr. litere de inceput' FROM adresa;

-- 6. Care este pretul maxim/minim al articolelor; 
SELECT MAX(pret) FROM articol;
SELECT MAX(pret), MIN(pret) FROM articol;
-- care este cantitatea maxima/minima de articole dintr-o comanda?
SELECT MAX(cantitate) AS 'Cantitate maxima', MIN(cantitate) AS 'Cantitate minima' FROM comanda_articol;

-- 7. Care este pretul minim al articolelor al caror nume incepe cu 'p' ?
SELECT * FROM articol WHERE LEFT(descriere, 1) = 'p';
SELECT MIN(pret) FROM articol WHERE LEFT(descriere, 1) = 'p';

-- poate incepe cu 'p' si poate avea orice dupa
SELECT * FROM articol WHERE descriere LIKE 'p%';

SELECT * FROM articol WHERE descriere LIKE 'p%r';

SELECT * FROM articol WHERE descriere LIKE '%e';

SELECT * FROM articol WHERE descriere LIKE '%e%';

-- 8. Care este pretul maxim al articolelor din comanda numarul 3?
SELECT * FROM articol JOIN comanda_articol ON articol.id = comanda_articol.articol_id WHERE comanda_id = 3;
SELECT MAX(pret) FROM articol JOIN comanda_articol ON articol.id = comanda_articol.articol_id WHERE comanda_id = 3;

-- 9. Cate articole au eel mai mare pret? Dar cel mai mic pret?
SELECT pret FROM articol;
SELECT MAX(pret) FROM articol;
SELECT COUNT(pret) FROM articol WHERE pret = 9.5;

SELECT COUNT(pret) FROM articol WHERE pret = (SELECT MAX(pret) FROM articol);

# variabila de sistem
SET @@sql_safe_updates = 1;

# variabila proprie
# varianta cea ma buna
SET @variabila_mea = 20;
SELECT @variabila_mea;

# varianta similara de setare
SET @variabila_mea := 23;
SELECT @variabila_mea;

# varianta similara de setare !! este cu :=
SET @variabila_mea := 100;
SELECT @variabila_mea;

# nu se seteaza valoarea
SET @variabila_mea = 777;
SELECT @variabila_mea;

SET @max_pret = (SELECT MAX(pret) FROM articol);
SELECT COUNT(pret) FROM articol WHERE pret = @max_pret;

-- 10. Care este diferenta 1ntre cel mai mare si mai mic pret (in bani) ?
SELECT MAX(pret), MIN(pret) FROM articol;
SELECT MAX(pret) - MIN(pret) FROM articol;

SET @max_pret = (SELECT MAX(pret) FROM articol);
SET @min_pret = (SELECT MIN(pret) FROM articol);
SELECT @max_pret - @min_pret;

-- 11. Care este initiala clientului cu ultimul nume, 1n ordine alfabetica?
SELECT * FROM client;
SELECT * FROM client ORDER BY denumire DESC LIMIT 1;
SELECT LEFT(denumire, 1) FROM client ORDER BY denumire DESC LIMIT 1;
SELECT MAX(denumire) FROM client;
SELECT LEFT(MAX(denumire), 1) FROM client;

-- 12. Care este suma preturilor articolelor?
SELECT SUM(pret) FROM articol;

-- 13. Care este pretul total al comenzii cu numarul 3?
SELECT * FROM comanda JOIN comanda_articol ON comanda.id = comanda_articol.comanda_id;
SELECT * FROM comanda 
	JOIN comanda_articol ON comanda.id = comanda_articol.comanda_id 
    JOIN articol ON articol.id = comanda_articol.articol_id;
SELECT * FROM comanda 
	JOIN comanda_articol ON comanda.id = comanda_articol.comanda_id 
    JOIN articol ON articol.id = comanda_articol.articol_id
    WHERE comanda_id = 3;
SELECT SUM(pret*cantitate) FROM comanda 
	JOIN comanda_articol ON comanda.id = comanda_articol.comanda_id 
    JOIN articol ON articol.id = comanda_articol.articol_id
    WHERE comanda_id = 3;

-- 14. Calculati pretul mediu al articolelor. Calculati pretul mediu al articolelor, neponderat.
SELECT SUM(pret) / COUNT(pret) FROM articol;
SELECT AVG(pret) FROM articol;

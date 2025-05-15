CREATE DATABASE IF NOT EXISTS firma;
use firma;
 
##Crearea tabelelor
-- 1. Se definesc doua chei straine in tabela angajat: 
-- 	(a) departament_id pentru id din tabela departament; 
-- 	(b) manager_id - o pentru id din tabela angajat

CREATE TABLE IF NOT EXISTS departament
(id int unique auto_increment primary key,
nume char(20),
manager_id int);
 
CREATE TABLE IF NOT EXISTS angajat
(id int unique auto_increment primary key,
nume char(20),
prenume char(20),
departament_id int,
manager_id int ,
salariu int,
angajare date,
vechime date,
INDEX (departament_id),
FOREIGN KEY (departament_id) REFERENCES departament(id),
FOREIGN KEY(manager_id) REFERENCES angajat(id));

INSERT INTO departament (nume, manager_id) VALUES
('Achizitii', 1), ('QA', 2), ('IT', 3), ('Backend', 4), ('HR', 5), ('Suport', 6), ('Vanzari', 7);
 
INSERT INTO angajat
(nume, prenume, departament_id, manager_id, salariu, angajare)
VALUES
('Toma',    'Ion',    1, NULL, 9000, '2000-1-12'),
('Georgescu',     'Maria',   1, 1, 4000, '2003-5-6'),
('Marin',   'Vasile', 1, 1, 4500, '2004-6-3'),
('Ionescu',     'Andrei', 1, NULL, 3500, '2002-1-1'),
('Vasilescu',   'Ana',    2, NULL, 2500, '2006-3-3'),
('Albu',  'Dinu',   2, 5, 2000, '2004-11-12'),
('Adam',  'Adrian', 5, NULL, 3500, '2006-10-12'),
('Teodorescu',  'Matei',  3, NULL, 3000, '2005-1-12'),
('Popescu',     'Vasile', 3, 8, 4000, '2005-9-9'),
('Mateescu',    'Dumitru',3, 8, 3500, '2007-2-5'),
('Calinescu',   'Alin',   4, NULL, 3200, '2005-8-2'),
('Popescu',     'Mihaela',4, 12, 1800, '2005-4-8'),
('Gigi',    'Dan',7,13, 4500, '2005-02-25'),
('Damian',   'Alina',  6, NULL, 3200, '2005-8-2'),
('Achim',     'Calin',4, 12, 1800, '2005-4-8'),
('Ionescu',     'Diana',  5, NULL, 5500, '2001-1-12');

-- 2. Listati numele angajatilor
SELECT nume FROM angajat;
SELECT nume, prenume FROM angajat;
SELECT CONCAT(nume, ' ', prenume) AS 'Nume complet' FROM angajat;

-- 3. Listati numele angajatilor, ordonate crescator
SELECT nume, prenume FROM angajat ORDER BY nume;
SELECT nume, prenume FROM angajat ORDER BY nume ASC;
SELECT id, nume, prenume FROM angajat;

-- 4. Selectati numele angajatilor, ordonate descrescator
SELECT id, nume, prenume FROM angajat ORDER BY nume DESC;
SELECT id, nume, prenume FROM angajat ORDER BY nume DESC, prenume DESC;

-- 5. Selectati numele angajatilor: DESC dupa departament_id, ASC dupa salariu;\
SELECT id, nume, prenume, salariu FROM angajat ORDER BY departament_id DESC, salariu ASC;

-- 6. Selectati numele angajatilor care lucreaza la HR
SELECT * FROM departament;
SELECT * FROM departament WHERE nume = 'HR';
SELECT id AS 'id HR' FROM departament WHERE nume = 'HR';

SELECT * FROM angajat;
SELECT * FROM angajat WHERE departament_id = 5;

SELECT * FROM angajat JOIN departament ON angajat.departament_id = departament.id;   
/* tabela1.fk = tabela2.pk */

SELECT * FROM angajat JOIN departament ON angajat.departament_id = departament.id WHERE departament.nume = 'HR';  
SELECT angajat.nume, angajat.prenume FROM angajat JOIN departament ON angajat.departament_id = departament.id WHERE departament.nume = 'HR';  

SELECT COUNT(*) FROM angajat;

-- 7. Listati angajatii care nu lucreaza la HR
SELECT angajat.nume, angajat.prenume FROM angajat JOIN departament ON angajat.departament_id = departament.id WHERE departament.nume != 'HR'; 
SELECT COUNT(*) FROM angajat JOIN departament ON angajat.departament_id = departament.id WHERE departament.nume != 'HR'; 
SELECT COUNT(*) FROM angajat JOIN departament ON angajat.departament_id = departament.id WHERE departament.nume <> 'HR'; 

-- 8. Listati angajatii care au salariu mai mare de 3000 lei
SELECT * FROM angajat WHERE salariu > 3000;
SELECT COUNT(*) FROM angajat WHERE salariu > 3000;

-- 9. Selectati angajatii care au salariul 3000 lei
SELECT * FROM angajat WHERE salariu = 3000;
SELECT COUNT(*) FROM angajat WHERE salariu = 3000;

-- 10. Selectati angajatii care au salariul intre 3000 si 5000 de lei
SELECT * FROM angajat WHERE salariu >= 3000 AND salariu <= 5000;
SELECT COUNT(*) FROM angajat WHERE salariu >= 3000 AND salariu <= 5000;

SELECT * FROM angajat WHERE salariu BETWEEN 3000 AND 5000;
SELECT COUNT(*) FROM angajat WHERE salariu BETWEEN 3000 AND 5000;

-- 11 Selectati angajatii care nu au manager
SELECT * FROM angajat WHERE manager_id IS NULL;
SELECT * FROM angajat WHERE manager_id IS NOT NULL;
SELECT * FROM angajat WHERE NOT manager_id IS NULL;

-- 12. Listati angajatii ai caror manager are ID-ul 1
SELECT * FROM angajat WHERE manager_id = 1;

-- 13. Enumerati angajatii ai caror manager este Toma Ion Silviu
SELECT * FROM angajat WHERE manager_id = 1;
SELECT id FROM angajat WHERE nume = 'Toma' AND prenume = 'Ion';

SELECT * FROM angajat JOIN angajat AS Boss ON angajat.manager_id = Boss.id;
SELECT * FROM angajat JOIN angajat AS Boss ON angajat.manager_id = Boss.id WHERE Boss.nume = 'Toma' AND Boss.prenume = 'Ion';

-- 14. Listati angajatii care au salariu mai mare de 2500 lei si lucreaza pe Backend
SELECT * FROM departament WHERE nume = 'Backend';
SELECT nume, prenume FROM angajat WHERE salariu > 2500 AND departament_id = 4;

SELECT * FROM angajat JOIN departament ON angajat.departament_id = departament.id;
SELECT * FROM angajat JOIN departament ON angajat.departament_id = departament.id WHERE salariu > 2500;
SELECT angajat.nume, angajat.prenume FROM angajat JOIN departament ON angajat.departament_id = departament.id WHERE salariu > 2500 AND departament.nume = 'Backend';

-- 15. Selectati angajatii ai caror manager NU este Toma Ion si care au salariu mai mare de 4000 lei
SELECT * FROM angajat AS Sub JOIN angajat AS Man ON Sub.manager_id = Man.id;
SELECT COUNT(*) FROM angajat AS Sub JOIN angajat AS Man ON Sub.manager_id = Man.id WHERE Man.nume = 'Toma' OR Man.prenume = 'Ion';
SELECT COUNT(*) FROM angajat AS Sub JOIN angajat AS Man ON Sub.manager_id = Man.id WHERE Man.nume != 'Toma' AND Man.prenume != 'Ion';

SELECT COUNT(*) FROM angajat;

SELECT * FROM angajat;

SELECT * FROM angajat AS Sub JOIN angajat AS Man ON Sub.manager_id = Man.id;

SELECT * FROM angajat AS Sub RIGHT JOIN angajat AS Man ON Sub.manager_id = Man.id;
SELECT * FROM angajat AS Sub LEFT JOIN angajat AS Man ON Sub.manager_id = Man.id;

SELECT COUNT(*) FROM angajat AS Sub LEFT JOIN angajat AS Man ON Sub.manager_id = Man.id WHERE Man.nume != 'Toma' OR Man.prenume != 'Ion';

SELECT * FROM angajat AS Sub LEFT JOIN angajat AS Man ON Sub.manager_id = Man.id WHERE (Man.nume != 'Toma' OR Man.prenume != 'Ion') OR Sub.manager_id IS NULL;
SELECT COUNT(*) FROM angajat AS Sub LEFT JOIN angajat AS Man ON Sub.manager_id = Man.id WHERE (Man.nume != 'Toma' OR Man.prenume != 'Ion') OR Sub.manager_id IS NULL;

SELECT * FROM angajat AS s JOIN angajat AS m ON s.manager_id = m.id;
SELECT * FROM angajat AS s JOIN angajat AS m ON s.manager_id = m.id JOIN departament AS d ON s.departament_id = d.id;
SELECT * FROM angajat AS s JOIN departament AS d ON s.departament_id = d.id;

SELECT * FROM angajat;
SELECT * FROM departament;

CREATE VIEW amd AS 
	SELECT s.nume AS s_nume, s.prenume AS s_prenume, d.nume AS dep, m.nume AS m_nume, m.prenume AS m_prenume FROM angajat AS s JOIN angajat AS m ON s.manager_id = m.id JOIN departament AS d ON s.departament_id = d.id;
    
SELECT * FROM amd;
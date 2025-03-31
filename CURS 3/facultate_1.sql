-- Creati o baza de date facultate, apoi o tabela cu numele student si campurile
CREATE DATABASE IF NOT EXISTS facultate;
USE facultate;

-- 	idstudent - cheie primara
CREATE TABLE student(idstudent INT PRIMARY KEY AUTO_INCREMENT,
--     nume - unic, nenul

nume VARCHAR(255) NOT NULL UNIQUE,
--     prenume - unic, nenul

prenume VARCHAR(255) NOT NULL UNIQUE,
--     grupa - obligatoriu, cu valori 1, 2, 3, 4
-- grupa INT CHECK(grupa > 0 AND grupa < 5),

grupa INT NOT NULL CHECK (grupa in (1, 2, 3, 4, 5)),
--     email - unic

email VARCHAR(255) UNIQUE,
--     data_inscrierii - default data curenta

data_inscrierii DATETIME DEFAULT CURRENT_TIMESTAMP,
--     statut - admis, respins, neevaluat - cu valoarea default neevaluat

statut VARCHAR(10) DEFAULT 'neevaluat' CHECK (statut IN ('admis', 'respins', 'neevaluat')));

SELECT * FROM student;

INSERT INTO student SET nume = 'Georgescu', prenume = 'George', grupa = 1, email = 'george@facultate.ro';
SELECT * FROM student;
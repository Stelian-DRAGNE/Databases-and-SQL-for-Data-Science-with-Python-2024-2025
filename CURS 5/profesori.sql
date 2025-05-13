SHOW DATABASES;

USE universitate;

SELECT * FROM profesor;

SELECT nume prenume FROM profesor;

SELECT nume FROM profesor;

SELECT nume AS "Nume de familie" FROM profesor;
SELECT nume "Nume de familie" FROM profesor;

-- Selecteaza cu ALIAS
SELECT nume 'prenume' FROM profesor;

SELECT * FROM profesor;
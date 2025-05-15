USE universitate;

SELECT * FROM profesor;
SELECT COUNT(*) AS 'TOTAL' FROM profesor;

SELECT * FROM profesor ORDER BY nume;

SELECT * FROM profesor ORDER BY nume DESC;

SELECT * FROM profesor ORDER BY nume DESC LIMIT 3;
SELECT * FROM profesor ORDER BY nume DESC LIMIT 5;

-- Selectare ultimii doi, dupa excluderea ultimilor trei din lista alfabetica
SELECT * FROM profesor ORDER BY nume DESC LIMIT 3, 2;

SELECT CONCAT(nume, prenume) FROM profesor;

SELECT CONCAT(nume, ' ', prenume) FROM profesor;
SELECT CONCAT(nume, '--', prenume) FROM profesor;
SELECT CONCAT(nume, ' ', prenume) AS 'Nume complet' FROM profesor;

SELECT CONCAT(prenume, ' ', nume) AS 'Nume complet' FROM profesor;

SELECT MAX(nume) FROM profesor;
SELECT MAX(data_nasterii) FROM profesor;
SELECT MAX(grad) FROM profesor;

SELECT MIN(nume), MIN(data_nasterii), MIN(grad) FROM profesor;

SELECT grad FROM profesor;

SELECT DISTINCT grad, idprofesor FROM profesor;

SELECT COUNT(*) FROM profesor WHERE grad = "I";
SELECT COUNT(*) FROM profesor WHERE grad = "II";
SELECT COUNT(*) FROM profesor WHERE grad = "III";

SELECT COUNT(*), grad FROM profesor GROUP BY grad;
USE mydb;

SELECT * FROM student;
SELECT * FROM facultate;

INSERT INTO facultate SET nume = 'Vietii', adresa = 'Str. Soarelui';
SELECT * FROM facultate;

SELECT * FROM student;
INSERT INTO student SET nume = 'Andy', prenume = 'Ionut', grupa = 2, email = 'ionut@vietii.ro', facultate_idfacultate = 1;
SELECT * FROM student;
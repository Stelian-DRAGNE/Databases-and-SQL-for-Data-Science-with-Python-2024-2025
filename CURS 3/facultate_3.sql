USE facultate;

SELECT * FROM student;
SELECT * FROM facultatea;

INSERT INTO facultatea SET nume = 'Vietii', adresa = 'Str. Soarelui';
SELECT * FROM facultatea;

SELECT * FROM student;
INSERT INTO student SET nume = 'Andy', prenume = 'Ionut', grupa = 2, email = 'ionut@vietii.ro', facultatea_idfacultate = 1;
SELECT * FROM student;

INSERT INTO student SET nume = 'Anton', prenume = 'Pan', grupa = 2, email = 'pan@vietii.ro', facultatea_idfacultate = 1;
SELECT * FROM student;
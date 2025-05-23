USE universitate;

SELECT * FROM adresa;
INSERT INTO adresa SET strada = 'Meciului', numar = 1, zip = 123456;
SELECT * FROM adresa;

SELECT * FROM profesor;
INSERT INTO profesor SET NUME = 'Popescu', prenume = 'Gica', adresa = 1, data_nasterii = '1964-02-01', grad = 1;
SELECT * FROM profesor;

INSERT INTO profesor (nume, prenume, adresa, data_nasterii, grad) 
	VALUES 			 ("Marin", "Andreea", 1, "1974-12-22", 2);
    
INSERT INTO profesor (nume, prenume, adresa, data_nasterii, grad) 
	VALUES 			 ("Florescu", "Florina", 1, "1989-12-10", 2),
					 ("Ionescu", "Ioan", 1, "1969-12-09", 3),
                     ("Marinescu", "Marin", 1, "1990-10-30", 2);
SELECT * FROM profesor;

SELECT * FROM student;
SELECT idprofesor, nume, prenume FROM profesor WHERE idprofesor = 3;

INSERT INTO student (nume, prenume) SELECT nume, prenume FROM profesor WHERE idprofesor = 3;
SELECT * FROM student;

SELECT * FROM curs;

INSERT INTO curs SET titlu = 'MySQL', an = 1, semestru = 1, credite = 6;
INSERT INTO curs SET titlu = 'HTML', an = 1, semestru = 1, credite = 5;
INSERT INTO curs SET titlu = 'Python Fundamentals', an = 1, semestru = 1, credite = 8;
SELECT * FROM curs;

SELECT * FROM predare;
ALTER TABLE predare RENAME COLUMN profesor_idprofesor To profesor;
ALTER TABLE predare RENAME COLUMN curs_idcurs To curs;
SELECT * FROM predare;

SELECT * FROM curs;
SELECT * FROM profesor;
INSERT INTO predare SET idpredare = 1, profesor = 2, curs = 1;
INSERT INTO predare SET idpredare = 2, profesor = 3, curs = 1;
SELECT * FROM predare;

SELECT * FROM profesor 
JOIN predare ON profesor.idprofesor = predare.profesor
JOIN curs ON predare.curs = curs.idcurs;
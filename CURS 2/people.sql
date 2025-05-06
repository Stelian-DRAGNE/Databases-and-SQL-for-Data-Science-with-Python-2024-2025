SHOW DATABASES;

CREATE TABLE personal.people (
	nume VARCHAR(255),
    prenume VARCHAR(255)
    );
SELECT * FROM personal.people;

USE personal;
SELECT * FROM people;

ALTER TABLE people ADD COLUMN id INT PRIMARY KEY AUTO_INCREMENT;
SELECT * FROM people;

INSERT INTO people SET nume = "Duck", prenume = 'Donald';
SELECT * FROM people;

INSERT INTO people SET nume = "Mouse", prenume = 'Mickey';
SELECT * FROM people;

INSERT INTO people SET nume = "Duck", prenume = 'Duffy';
SELECT * FROM people;

INSERT INTO people SET nume = "Mouse", prenume = 'Minnie';
SELECT * FROM people;

INSERT INTO people SET nume = "Duck", prenume = 'Donald';
SELECT * FROM people;

DELETE FROM people WHERE id = 5;
SELECT * FROM people;

ALTER TABLE people ADD COLUMN varsta INT;
SELECT * FROM people;

ALTER TABLE people ADD COLUMN retea VARCHAR(255) DEFAULT 'Disney';
SELECT * FROM people;

ALTER TABLE people ADD COLUMN culoare VARCHAR(255), ADD dimensiune INT;
SELECT * FROM people;
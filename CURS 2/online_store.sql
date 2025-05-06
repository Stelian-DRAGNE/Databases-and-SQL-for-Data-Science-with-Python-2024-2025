-- Trebuie să creați un script pentru crearea bazei de date: online_store

-- Acest script va șterge baza de date existentă dacă există.
DROP DATABASE IF EXISTS online_store ;
CREATE DATABASE online_store;

-- Trebuie creat un script pentru a crea tabelul computer_parts
	-- Acest tabel ar trebui să conțină informații despre
	-- ID-ul dispozitivului
	-- Cheie primară, se autoincrementează
    -- codul dispozitivului
	-- este format din maxim 5 caractere
    -- tipul dispozitivului
	-- default 'Electronic'
    -- numele dispozitivului
	-- unic , not null
    -- prețul dispozitivului.
	-- are maxim 7 cifre, și 2 după virgulă
    
CREATE TABLE computer_parts ( 
	id INT PRIMARY KEY AUTO_INCREMENT,
	cod VARCHAR(5),
	tip VARCHAR(255) DEFAULT 'Electronic',
	nume VARCHAR(100) UNIQUE NOT NULL,
	pret DECIMAL (7,2));

USE online_store;
SELECT * FROM computer_parts;

INSERT INTO computer_parts SET nume = 'cablu', pret = 54.23;
SELECT * FROM computer_parts;
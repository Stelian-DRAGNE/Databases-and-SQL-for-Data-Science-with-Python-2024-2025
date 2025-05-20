-- • Creati o baza de date db_privilegii. Aceasta baza de date trebuie sa aiba trei utilizatori:
-- 	• privilegii_admin, cu codul xyz care va putea sa se conecteze doar de pe calculatorul local si va avea toate drepturile asupra bazei de date
-- 	• privilegii_user, cu cod 123, care va putea sa se conecteze doar de pe o anumita adresa IP (localhost/127.0.0.1/) si va avea posibilitatea 
-- utilizarii instructiunii select, insert, update si delete in baza de date
-- 	• privilegii_viewer, cu codul abc care va putea sa se conecteze de la toate adresele IP si va avea doar posibilitatea instructiunii select in 
-- baza de date

CREATE DATABASE db_privilegii;

CREATE USER privilegii_admin@localhost IDENTIFIED BY 'xyz';
GRANT ALL PRIVILEGES ON db_privilegii.* TO privilegii_admin@localhost;

CREATE USER 'privilegii_user@127.0.0.1' IDENTIFIED BY '123';
GRANT SELECT, INSERT, UPDATE, DELETE ON db_privilegii.* TO 'privilegii_user@127.0.0.1';

CREATE USER 'privilegii_viewer@%' IDENTIFIED BY 'abc';
GRANT SELECT ON db_privilegii.* TO 'privilegii_viewer@%';
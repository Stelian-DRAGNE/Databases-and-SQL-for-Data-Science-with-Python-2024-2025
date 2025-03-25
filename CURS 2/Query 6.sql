-- Trebuie sa creati un script pentru crearea bazei de date : online_store.
create database online_store;
-- Acest script va sterge baza de date existenta daca exista.
drop database if exists online_store ;
-- Trebuie creat un script pentru a crea tabelul computer_parts.
-- Acest tabel ar trebui sa contina informatii despre 
-- ID-ul dispozitivului
-- Cheie primara se autoincrementeaza
create table computer_parts (id int primary key auto_increment,
-- codul dispozitivului este format din maxim 5 caractere 
cod varchar (5),
-- tipul dispozitivului
-- default 'Electronic'
tip varchar (255) default 'Electronic',
-- numele dispozitivului unic, not null
nume varchar (100) unique not null, 
-- pretul dispozitivului are maxim 7 cifre, si 2 dupa virgula.
pret decimal (7, 2));

use online_store;
select * from computer_parts;

insert into computer_parts set nume = 'cablu', pret = 54.23;
select * from computer_parts;

show databases;

create database angajati;
use angajati;

create table dezvoltatori (id int primary key, nume varchar(255));

insert into dezvoltatori values (1, "Ionescu");
select * from dezvoltatori; 

insert into dezvoltatori values (2, "Popescu");
select * from dezvoltatori; 

insert into dezvoltatori values (1, "Georgescu");
select * from dezvoltatori; 

insert into dezvoltatori values (6, "Popescu");
select * from dezvoltatori; 

update dezvoltatori set nume = "Popescu-Popescu" where id = 1;
select * from dezvoltatori; 

insert into dezvoltatori values (3, "Georgescu");
select * from dezvoltatori; 

-- insert into dezvoltatori set nume = "Gigi";
insert into dezvoltatori set id = 7;
select * from dezvoltatori; 


create table studenti (id int primary key auto_increment, nume varchar (10));
insert into studenti values (1, "Mihai");
select * from studenti; 

insert into studenti set nume = "Florin";
select * from studenti; 

insert into studenti values (8, "Andreea");
select * from studenti; 

insert into studenti set nume = "Ana";
select * from studenti; 
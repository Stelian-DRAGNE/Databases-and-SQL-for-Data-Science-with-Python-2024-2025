show databases;

## CREARE DB
create database vremea;

## FOLOSIRE
use vremea;

show databases;

create table temperaturi (
	id int primary key auto_increment, grade smallint 
);

## Select ALL
select * from temperaturi;

## Select doar coloana specificata
select grade from temperaturi;

## Select doar coloanele specificate
select grade, id from temperaturi;

insert into temperaturi set id = 1, grade = 6;
select * from temperaturi;

insert into temperaturi set id = 2, grade = 7;
select * from temperaturi;

insert into temperaturi set id = 5, grade = 17;
select * from temperaturi;

insert into temperaturi set grade = 27;
select * from temperaturi;


insert into temperaturi set id = 7;
select * from temperaturi;

drop table if exists masurari;

create table masurari (
	id int primary key auto_increment, grade smallint not null default 0
);
select * from masurari;

insert into masurari set id = 1, grade = 10;
select * from masurari;

insert into masurari set id = 2;
select * from masurari;

update masurari set grade = 3 where id = 2;
select * from masurari;
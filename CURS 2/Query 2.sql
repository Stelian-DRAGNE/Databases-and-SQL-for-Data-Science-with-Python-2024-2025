create database personal;
use personal;

## CATEGORII : Atacant, Mijlocas, Fundas, Portar
drop table if exists date_personale;
create table date_personale (id int primary key auto_increment,
	prenume varchar (255), 
    nume varchar (255), 
    varsta int check (varsta > 5),
    pozitie varchar (255) default 'Atacant' check (pozitie in('Atacant', 'Mijlocas'))
);

insert into date_personale set prenume = 'Ion', nume = 'Ionescu';
select * from date_personale;

insert into date_personale set prenume = 'Alex', nume = 'Alexandrescu', varsta = 18;
select * from date_personale;

update date_personale set varsta = 12 where id = 1;
select * from date_personale;

insert into date_personale set prenume = 'George', nume = 'Georgescu';
select * from date_personale;

insert into date_personale set prenume = 'Florin', nume = 'Florinescu';
select * from date_personale;

insert into date_personale set prenume = 'Mihai', nume = 'Mihailescu';
select * from date_personale;

select * from date_personale order by varsta;
select * from date_personale order by varsta, nume;

select * from date_personale where varsta > 15;
select * from date_personale where varsta is not null;
select * from date_personale where varsta is null;

select * from date_personale order by nume;

insert into date_personale set prenume = 'Cornel', nume = 'Cornescu';
select * from date_personale order by nume;

insert into date_personale set prenume = 'Cornel', nume = 'Cornescu', pozitie = 'Mijlocas';
select * from date_personale order by nume;
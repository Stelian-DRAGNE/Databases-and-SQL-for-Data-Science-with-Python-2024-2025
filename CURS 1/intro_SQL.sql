show databases;

-- create database prima_baza_de_date;
# show databases;

create database a_doua_baza_de_date;

show databases;

drop database a_doua_baza_de_date;

create database if not exists a_treia_baza_de_date;
drop database if exists a_treia_baza_de_date;

use prima_baza_de_date;
create table calorii (nr_crt int, calorii int);

drop table if exists calorii;

create table if not exists calorii (nr_crt int, calorii int);

insert into calorii values (1, 2500);

select * from calorii;

insert into calorii values (2, 3000);

select * from calorii;

insert into calorii values (3500, 3);

select * from calorii;

insert into calorii set nr_crt=4, calorii=1900;

select * from calorii;

insert into calorii set nr_crt=4, calorii=1900;

select * from calorii;


insert into calorii set calorii=2223;
select * from calorii;

drop table calorii;

insert into calorii set calorii=2223;
select * from calorii;
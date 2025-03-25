show databases;

create database if not exists a_patra_baza_de_date;
show databases;

use a_patra_baza_de_date;

# 0 .. 18
create table if not exists iepuri (nume varchar(255), varsta smallint);
select * from iepuri;

insert into iepuri values ("Bugs", 5);
select * from iepuri;

insert into iepuri set varsta = 9, nume = "Morcoveata";
select * from iepuri where varsta = 5;

select * from iepuri where nume = "Bugs";

insert into iepuri values ("Bugs", 7);
insert into iepuri values ("Bugs", 10);
insert into iepuri values ("Bugs", 12);
select * from iepuri;

set sql_safe_updates = 0;
update iepuri set nume = "Bugs Bunny" where nume = "Bugs";
select * from iepuri;

set sql_safe_updates = 1; 
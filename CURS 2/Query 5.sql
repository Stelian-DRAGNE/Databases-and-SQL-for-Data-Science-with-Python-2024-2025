create database geografie;
use geografie;

create table judete (id int primary key, nume varchar (255), cod varchar (2));

insert into judete set id = 1, nume = 'Constanta', cod = 'CT';
select * from judete;

insert into judete set id = 2, nume = 'Constanta', cod = 'CT';
select * from judete;

drop table judete;

create table judete (id int primary key, nume varchar (255) unique, cod varchar (2));
select * from judete;

insert into judete set id = 1, nume = 'Constanta', cod = 'CT';
select * from judete;

insert into judete set id = 2, cod = 'CT';
select * from judete;

insert into judete set id = 3, cod = 'CT';
select * from judete;

alter table judete add constraint cod_unic unique (cod);
update judete set cod = 'BV' where id = 2;
update judete set cod = 'TM' where id = 3;
select * from judete;

alter table judete add constraint cod_unic unique (cod);
select * from judete;

insert into judete set id = 5, cod = 'CV';
select * from judete;

alter table judete modify id int auto_increment;
select * from judete;

insert into judete set nume = 'Cluj';
select * from judete;
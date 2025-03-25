
show databases;

create table personal.people (nume varchar (255), prenume varchar (255));
select * from personal.people;

use personal;
select * from people;

alter table people add column id int primary key auto_increment;
select * from people;

insert into people set nume = 'Duck', prenume = 'Donald';
select * from people;

insert into people set nume = 'Mouse', prenume = 'Mickey';
select * from people;

insert into people set nume = 'Duck', prenume = 'Duffy';
select * from people;

insert into people set nume = 'Mouse', prenume = 'Minnie';
select * from people;

insert into people set nume = 'Duck', prenume = 'Donald';
select * from people;

delete from people where id = 5;
select * from people;

alter table people add column varsta int;
select * from people;

alter table people add column retea varchar(255) default 'Disney';
select * from people;

alter table people add column culoare varchar (255), add dimensiune int; 
select * from people;
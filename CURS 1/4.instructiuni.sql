show databases;

use angajati;
select * from studenti;

insert into studenti set nume = "Andreea";
select * from studenti;

insert into studenti set nume = "George", id = 6;
select * from studenti;

insert into studenti set nume = "Andreea";
select * from studenti;

delete from studenti where id = 10;
select * from studenti;
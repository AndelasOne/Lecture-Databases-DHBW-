create database if not exists stadtverwaltung;
use stadtverwaltung;

create table if not exists project(
id int(32) primary key,
name varchar(32),
beschreibung varchar(100),
start_datum varchar(10),
end_datum varchar(10),
status varchar(16)
);

drop table if exists  projectleiter;
drop table if exists  mitarbeiter;

create table if not exists mitarbeiter(
persNr int(16) primary key,
vorname varchar(32),
nachname varchar(32),
idResort int,
projectId int(32),
foreign key(idResort) references ressort(id),
foreign key(projectId) references project(id)

);

create table if not exists projectleiter(
persNr int(16),
idProject int(32),
foreign key(persNr) references mitarbeiter(persNr)
);


create table if not exists ressort(
id int primary key,
name varchar(32)
);

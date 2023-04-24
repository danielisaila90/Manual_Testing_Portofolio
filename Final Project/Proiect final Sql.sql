create database orangeHrm;

drop database orangehrm;

show databases;

create table emergencyContacts

(

firstName varchar (30) not null,
lastName varchar (30) not null

);


alter table emergencycontacts
add column homeTelephone int ;

alter table emergencycontacts
drop  homeTelephone;

alter table emergencycontacts
add column relationship varchar (25) ;

desc emergencycontacts;

alter table emergencycontacts 
modify firstName char (30)not null;

alter table emergencycontacts rename to contacteDeUrgenta;

alter table contactedeurgenta
add column dateOfBirth int;

insert into contactedeurgenta (firstName, lastName, relationship)
values ( 'Vasile', 'Moraru', 'Frate');



select * from contactedeurgenta;

insert into contactedeurgenta (firstName, lastName, relationship, dateOfBirth)
values ( 'Gigi', 'Patrocle', 'Frate', 1980-06-30), ('Ioan', 'Gheorghe', 'socru', 1958-04-21);

delete from contactedeurgenta;
select * from contactedeurgenta;

truncate table contactedeurgenta;

alter table contactedeurgenta
add column homeTelephone int;

alter table contactedeurgenta
add column mobile int;

alter table contactedeurgenta
add column workTelephone int;

insert into contactedeurgenta(firstName, lastName, relationship, dateOfBirth, homeTelephone, mobile, workTelephone)
values ( 'Vasile', 'Vasilica', 'frate', 1989-12-30, 32423424, 234234234, 423423423);

select * from contactedeurgenta;

insert into contactedeurgenta(firstName, lastName, relationship, dateOfBirth, homeTelephone, mobile, workTelephone)
values ( 'Ghita', 'Cornel', 'bunic', 1990-07-12, 32443424, 234236234, 427423423),
('Ciprian', 'Tataru', 'nepot', 1967-03-01, 32443324, 234233234, 427424423);

select firstName, lastName, dateOfBirth from contactedeurgenta;

alter table contactedeurgenta 
add column city varchar (45);

update contactedeurgenta set city = "Galati" where firstName = 'Gigel';

select * from contactedeurgenta where dateOfBirth<=1971;

select * from contactedeurgenta where dateOfBirth>1971;

select * from contactedeurgenta where firstName in ('vasile', 'ciprian');
select * from contactedeurgenta where firstName not in ('vasile', 'ciprian');

select * from contactedeurgenta where city is null;


select * from contactedeurgenta where dateOfBirth != 1947;

select * from contactedeurgenta where dateOfBirth between 1971 and 1947;

select * from contactedeurgenta where firstName like 'C%';

select * from  contactedeurgenta where firstName like '%el';

select * from  contactedeurgenta where firstName like '%c%';

select * from contactedeurgenta where dateOfBirth like '1963%';

select * from contactedeurgenta;

select * from contactedeurgenta where firstName like '%le' and '194%';
select * from contactedeurgenta where firstName like '%le' or '194%';

select sum(dateofbirth) from contactedeurgenta;

select avg(dateofbirth) from contactedeurgenta;

select min(dateofbirth) from contactedeurgenta;

select count(*) from contactedeurgenta;
 
alter table contactedeurgenta
add column contactsId int primary key auto_increment;

desc contactedeurgenta;
alter table contactedeurgenta 
modify column contactsId int auto_increment first;

select * from contactedeurgenta;

create table dependents(
dependentsId int not null auto_increment,
name varchar (25) not null,
relationship varchar (25) not null,
dateOfBirth date not null,
contactsId int not null,
primary key (dependentsId),
constraint fk_dependents_contactedeurgenta foreign key (contactsId) references contactedeurgenta(contactsId)
);

select * from contactedeurgenta;

insert into dependents (name, relationship, dateOfBirth, contactsId)
values ('Bucur Andreea', 'sora', '1990-01-27', '1');

insert into dependents (name, relationship, dateOfBirth, contactsId)
values ('Bucur Costel', 'ginere', '1980-01-02', '2'),('Virgil Popescu', 'verisor', '1988-01-02', '2');

select * from contactedeurgenta cross join dependents;

select * from contactedeurgenta inner join dependents on contactedeurgenta.contactsId = dependents.contactsId;

select * from contactedeurgenta left join dependents on contactedeurgenta.contactsId = dependents.contactsId;
select * from contactedeurgenta left join dependents on contactedeurgenta.contactsId = dependents.contactsId
where dependents.contactsId is null;
select * from contactedeurgenta left join dependents on contactedeurgenta.contactsId = dependents.contactsId
where dependents.contactsId is not null;

select * from contactedeurgenta right join dependents on contactedeurgenta.contactsId = dependents.contactsId
where contactedeurgenta.contactsId is not null;



select * from  contactedeurgenta order by dateOfBirth;

select * from  contactedeurgenta order by dateOfBirth desc ;

select * from  contactedeurgenta order by dateOfBirth desc limit 2  ;

select c.contactsId , firstName, lastName, count(dependentsId)
from contactedeurgenta c inner join dependents d on c.contactsId = d.contactsId
group by c.contactsId,firstName, lastName
having count(dependentsId>2);


select * from contactedeurgenta inner join dependents on contactedeurgenta.contactsId = dependents.contactsId;


select * from contactedeurgenta c inner join dependents d on c.contactsId = d.contactsId;














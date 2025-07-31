create database employee
use employee
create table details(
ID int primary key,
Name varchar(100) not null,
Department varchar(100) not null,
Experience int not null);
insert into details (ID,Name,Department,Experience)
values(23,'Gnaneshwar','Developer',4),
(45,'Peta','Testing',8),
(33,'Hardik','Developer',33),
(18,'Virat','API Developer',12);
select * from details;
update details
set salary='50,000'
where ID in(18,23,33,45);
ALTER TABLE details
ADD Salary VARCHAR(10) NOT NULL DEFAULT '0';
alter table details
rename column salary to income;
select * from details;
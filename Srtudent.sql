                                                  -- -------- TO Create Database --------
use mec
												 --  -------- To Ceate a Table --------
create table student(
Roll_no int primary key,
Name varchar(100) not null,
Department varchar(80) not null,
Year int not null);
                                               -- -------- To Insert a Values in a Table --------
insert into student (Roll_no,Name,Department,Year)
values(28,'Peta Gnaneshwar Reddy','CSE',4),
(29,'Praveen','CSE',4),
(31,'Siva Rama Kasi Reddy','AIDS',4),
(38,'Kasiamma','AIDS',4);
select * from student;
                                            -- -------- To update Any Changes in Table --------
update student
set name='Kasianna'
where Roll_no =38;
select * from student;
										       -- -------- Add another Colom--------
alter table student
add Gender int not null;
alter table student
modify Gender varchar(20);
update student
set gender='Male'
where Roll_no=28;
update student
set gender='Male'
where Roll_no=29;
update student
set gender='Male'
where Roll_no=31;
update student
set gender='Male'
where Roll_no=38;
select * from student;
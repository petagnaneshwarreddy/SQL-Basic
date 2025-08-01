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
                                          -- -------------Aggrigations ------------
                                          
                                          -- ---count how many students are their---
select count(*) as tot_student from student;
										      -- ---------find max year---------
select max(year) as max_yr from student;
                                            -- -------------find min-------------
select min(Roll_no) as Min from student;
										   -- -------------find avg-------------
select avg(Year) as avg_year from student;
                                           -- -------------find Sum-------------
select sum(Roll_no) as Total from student;
                                           -- -------------find count department wise count-------------
select Department,COUNT(*) AS Dep FROM student GROUP BY Department;
                                            -- -------------find count department wise-------------
select Department,MAX(Year) as max_yr from student group by Department;
                                             -- -------------find assending order-------------
select * from student
order by Roll_no asc;
                                           -- -------------find dessinding order-------------
select * from student
order by Roll_no desc;
                                           -- -------------find order by name-------------
select * from student
order by Name;
                                     -- ---------------         STRING                -----------------
                                     
                                           -- ------------- Upper case order-------------
select upper(Department) as dep_var from student;
                                           -- -------------Lower Case order-------------
select lower(Department) as dep_var from student;
                                           -- ------------- print 2 number order-------------
select left(Name,2)as dep_var from student;
                                           -- -------------find name length-------------
select name,length(name) as dep_var from student;
                                           -- -------------print name and department -------------
select concat(name,'-',department) as dep_var from student;
                                           -- -------------increase the year-------------
select name,year,year + 1 as dep_var from student; 
                                           -- -------------decrease the year-------------
select name,year,year - 1 as dep_var from student;
                                           -- -------------decrease the year as roll no-------------
select name,year,year - 1 as dep_var from student
where Roll_no = '31';
                                           -- -------------increase the year-------------
select name,year,year + 1 as dep_var from student;
                                           -- -------------print roll no add and even identify 0 and 1-------------
select Roll_no,mod(Roll_no,2)as dep_var from student;
                                           -- -------------insert date column-------------
alter table student
add Date_info date;
                                           -- -------------add date to row-------------
update  student
set Date_info='2021-09-18'
where Roll_no =28;
update  student
set Date_info='2025-06-29'
where Roll_no =29;
update  student
set Date_info='2021-06-25'
where Roll_no =31;
update  student
set Date_info='2021-09-6'
where Roll_no =38; 
select * from student
                                           -- -------------Delete the column-------------
alter table student
drop column Date_info;
                                           -- -------------check time and date and time stamp current-------------
select curdate();
select current_time();
select current_date();
select current_user();
select curtime();
select current_timestamp();
                                           -- -------------date info  display roll no, name , year-------------
select Roll_no,Name,Year(Date_info)as dep_var from student;

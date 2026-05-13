create database college;
show databases;
use college;
create table course(
course_id int primary key,
course_name varchar(20),
duration int,
college_name varchar(50)
);
insert into course( course_id, course_name, duration, college_name)
values(1,"BCA",3,"MBGPG"),
(2,"MCA",2,"DSB"),
(3,"Data Science",1,"DTL"),
(4,"Data Analytics",1,"Cadd Centre"),
(5,"MBA",2,"MBGPG");

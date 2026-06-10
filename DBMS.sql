-- How to create database
create database dm100;
-- to delete a database
drop database dm100;
-- check the db
show databases;
-- How to utilize the database
use dm100;
-- create one db nd the name will be your name
create database sneha;
use sneha;
-- how to create table
-- stu_id
-- stu_name
-- stu_subject
create table student(
stu_id int(30),
stu_name varchar(20),
stu_subject varchar(30));

select* from student;
create table employee(
emp_id int,
emp_name varchar(30),
emp_salary decimal(10,3),
emp_dept varchar(30),
emp_doj datetime);

select * from employee;
-- How to drop or delete table
drop table employee;
-- create the table hospital
-- pat_id 
-- pat_name
-- pat_disease
-- pat_doj
-- pat_doctor
create table Hospital(
pat_id int,
pat_name varchar(30),
pat_disease varchar(20),
pat_doj datetime,
pat_doctor varchar(30));

select* from Hospital;

use dm;
-- clg
-- c_id unique
-- c_name
create table clg500(
c_id int primary key,
score int check(score>=60),
s_grade varchar(30) check(s_grade like 'a%'),
stu_place varchar(30) default 'sikim',
c_name varchar(30));

insert into clg500(c_id,score,s_grade,c_name) values
(90,90,'a','sikim'),
(4,78,'a','');

select*from clg500;

show keys from clg50 where key_name='primary';

-- create one table 
-- the table is course
-- cid pk
-- cname ds
-- stu_age >14


create table course380(
c_id int primary key auto_increment,
c_name varchar(30) default 'ds',
s_age int check(s_age >14));

insert into course380(s_age) values(15),(80),(120);

select*from course380;

-- create table ticket
-- t_id
-- pass_name
-- booking_time datetime default time
create table ticket(
t_id int primary key auto_increment,
pass_name varchar(30),
booking_time datetime default current_timestamp);
insert into ticket(pass_name) values('ad');
select*from ticket;
drop table ticket;

-- primary key
-- check 
-- default
-- auto_increment
truncate table ticket;
-- create the table give name emplo89
-- emp_id varchar
-- emp_name varchar
-- emp_designation varchar
-- emp_age int

create table emplo892(
emp_id varchar (30),
emp_name varchar(30),
emp_des varchar(20),
emp_age int);
insert into emplo892(emp_id,emp_name,emp_des,emp_age) values('e001','ad','hr',23),
('e2300','ak','ds',25),
('e569','aks','da',34),
('e003','ads','bde',34);
-- we will see the table
select* from emplo892;
-- we will the update ads to your name
update emplo890 set emp_name='adm'
where emp_id='e003';

use sneha;

-- change emp_des hr to 'se'
update emplo890 set emp_des='se'
where emp_id='e001';
-- update emp_age,emp_name where emp_id is 'e569'
update emplo890 set emp_name='gsd',emp_age=33 
where emp_id='e569';
delete from emplo890 where emp_id='e569';
select* from emplo890;
-- you have to delete the row 

delete from emplo890 where emp_name='adm';
select* from emplo890;
-- update
-- delete
-- alter
alter table emplo890 add emp_exp int;
-- u have to update emp_exp = 3 where emp_id='e2300'
update emplo890 set emp_exp=3
where emp_id='e2300';
select* from emplo890;
-- where the emp_exp=3 i want to delete that
update emplo890 set emp_exp=null where  emp_id='e2300';

-- delete the emp_des column
alter table emplo890 drop emp_des;
-- try to delete emp_id and emp_name
alter table emplo890 drop column emp_id,drop column emp_name;
-- we have to modify the datatype
alter table emplo892 modify emp_id varchar(5);
-- where the emp_age is int change this to decimal
alter table emplo892 modify emp_age decimal(10,2);
select* from emplo892;
-- emp_des to emp_designation
alter table emplo892 rename column emp_des to emp_designation;
-- change emp_name to employee_nmae
alter table emplo892 rename column emp_name to employee_name;
-- change the table name emplo892 to emp
alter table emplo892 rename to emp;
select* from emp;
drop table emp;
create table emp(
emp_id int primary key auto_increment,
emp_place varchar(30) default 'pune');
insert into emp(emp_place) values('uk'),('sikim'),('ap'),('kr');
select* from emp;






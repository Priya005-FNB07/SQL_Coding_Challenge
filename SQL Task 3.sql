                                -- SQL TASK 3 --              
                          --SQL Question 1: DISTINCT & WHERE 
CREATE DATABASE UNIVERSITY;                                
USE university;
create table college(
student_id int primary key auto_increment,
student_name varchar(30),
gender enum('M','F'),
department varchar(20) unique,
email varchar(50),
gpa decimal(5,2),
gpa_status varchar(20)
);
 insert into college (student_name,gender,department,email,gpa,gpa_status)
 values ('suresh','M','BBA','suresh@gmail.com',3.02,'good'),
 ('anand','M','BCOM','anand@gmail.com',2.08,'average'),
 ('jothi','F','MSC','null',3.20,'good'),
 ('ram','M','ARTS','ram@gmail.com',3.52,'excellent'),
 ('priya','F','MBA','null',3.9,'excellent'),
 ('ramesh','M','MCOM','ramesh@gmail.com',3.8,'excellent'),
 ('ravi','M','BA','null',1.09,'poor'),
 ('sudha','F','MA','null',2.80,'average');
 select * from college;
 use university; 
 select distinct gpa_status from college;
 select * from college where gpa>3;
                  --SQL Question 2 : IS NULL & NOT NULL--
select*from college where email is null;
select*from college where email is not null; 
				   --SQL Question 3: IN , BETWEEN , NOT BETWEEN--
 select * from college where student_name in('priya','ramesh','ravi');
 select* from college where gpa_status in('good','excellent');
 select *from college where gpa between 3.00 AND 3.80;
 select * from college where gpa not between 3.00 and 3.80;
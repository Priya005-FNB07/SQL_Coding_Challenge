                                              -- SQL TASK 5 --                                              
create database enrollments;
use enrollments;
create table students (student_id int,
students_name varchar(20),
course_id char(5));                                          
insert into students (student_id,students_name,course_id)
values(1,'ANAND','C01'),(2,'RAVI','C02'),(3,'RAMESH','C03'),(4,'SANGEETHA','C04'),(5,'RAM','C05'),(6,'PRIYA','C08'),(7,'SHALINI','C09');
SELECT * FROM STUDENTS;
create table course (course_id char(5),
course_name varchar(15));
insert into course (course_id,course_name)
values('C04','MBA'),('C02','BBA'),('C01','BCOM'),('C05','ARTS'),('C03','MSC'),('C06','BSC'),('C07','HISTORY');
select * from course;
                        -- SQL Question 1: INNER JOIN --
select s.students_name,c.course_name
from students as s
inner join course as c on s.course_id = c.course_id;
					    -- SQL Question 2: LEFT & RIGHT JOINS --
select s.students_name,c.course_name
from students as s
left join course as c on s.course_id = c.course_id;

select s.students_name,c.course_name
from students as s
right join course as c on s.course_id = c.course_id;
					    -- SQL Question 3: UNION & UNION ALL --
create  database Elist;
use Elist;
create table currentlist (employee_id char(5),
name varchar(15),
role varchar(20));
create table oldlist (employee_id char(5),
name varchar(15),
role varchar(20));
insert into currentlist (employee_id,name,role)
values('E01','MAGESH','MARKETING'),('E02','ANU','HR'),('E03','KRITHIGA','SALES'),
('E05','RAM','SALES'),('E04','KALAI','MANAGER');
insert into oldlist(employee_id,name,role)
values('E02','ANU','HR'),('E04','NAVEEN','EXCECUTIVE'),('E03','BALU','SALES'),
('E05','RAM','SALES'),('E01','RAMYA','MARKETING');

select * from currentlist
union
select * from oldlist;
select * from currentlist
union all
select * from oldlist;


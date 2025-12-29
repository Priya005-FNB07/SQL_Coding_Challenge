                                       -- SQL TASK 6 -- 									
create database emplist; 
use  emplist;                                    
create table report (emp_id int,
first_name varchar(10),
last_name varchar(10),
gender enum ('M','F')
);
insert into report(emp_id,first_name,last_name,gender)
values(1,'Ram','Priya','F'),(2,'Suresh','Kumar','M'),(3,'Rama','Lakshmi','F'),
(4,'Nagul','Vaibav','M');
select * from report;
                             --SQL Question 1: STRING FUNCTION --
select first_name,upper(first_name),lower(last_name)from report;
select concat(first_name," ",last_name)from report; 
select substring(first_name,2,3) from report;           
							-- DATE FUNCTION --
create database emptenure;
use emptenure;
create table tenure(emp_id char(5),
emp_name varchar(15),
hire_date date);
insert into tenure(emp_id,emp_name,hire_date)
values('E01','Sandhiya','2022-09-25'),
('E02','Raman','2023-02-11'),
('E03','Kanan','2020-11-27');
select * from tenure;
                            -- SQL Question 2: DATE FUNCTION --
select curdate();
select hire_date, year (hire_date),month(hire_date),day(hire_date) from tenure;
select hire_date,datediff(curdate(),hire_date) experience_of_days from tenure;

						    -- SQL Question 3:  USER - DEFINED FUNCTION --
create database stu; 
use  stu;                                    
create table stulist (stu_id int,
first_name varchar(10),
last_name varchar(10),
gender enum ('M','F')
);
insert into stulist(stu_id,first_name,last_name,gender)
values(1,'Priya','Lakshmi','F'),(2,'Suresh','Kumar','M'),(3,'Rama','Lakshmi','F'),
(4,'Nagul','Vaibav','M');
select * from stulist;
select concat(first_name,' ',last_name) full_name from stulist;     
        
DELIMITER $$
CREATE FUNCTION  full_name()
RETURNS varchar(20)
DETERMINISTIC
BEGIN
DECLARE result varchar(20);
select concat(first_name,' ',last_name) into result from stulist where stu_id=1; 
return result; 
END $$
DELIMITER ;

select full_name();











                            
              
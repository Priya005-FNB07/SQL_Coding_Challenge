						              -- SQL TASK 7 --
create database employeedetails;
use employeedetails;
create table employees(emp_id char(5)primary key,
emp_name varchar(15),
gender enum('m','f'));
create table department(dept_id char(5)primary key,
dept_name varchar(10),
emp_id char (5));
create table salary(salary_id char(5) primary key,
net_salary decimal(10,2),
emp_id char (5),
dept_id char(5),
foreign key (emp_id) references employees(emp_id),
foreign key (dept_id) references department(dept_id));
insert into employees
values('E01','anu','f'),('E02','babu','m'),('E03','anand','m'),
('E04','kanan','m'),('E05','ramya','f');
select * from employees;
insert into department 
values('D01','sales','E01'),('D02','HR','E02'),
('D03','MARKET','E03'),('D04','IT','E04'),('D05','finance','E05');
insert into salary
values('S01',30000.00,'E01','D01'),('S02',45000.00,'E02','D02'),('S03',35000.00,'E03','D03'),
('S04',47000.00,'E04','D04'),('S05',50000.00,'E05','D05');

                                  -- SQL QUESTION 1 : STORED PROCEDURE--
delimiter $$
create procedure emp_by_id(in emp_info char(5))
begin
select e. * ,d.dept_name,s.net_salary FROM employees e
join salary s on e.emp_id=s.emp_id
join department d on d.dept_id=s.dept_id
where e.emp_id=emp_info;
end $$
delimiter ; 

call emp_by_id ('E05');
call emp_by_id ('E03');
                                    -- SQL QUESTION 2 : SIMPLE VIEW --         
create view emp_details as
select e. emp_name, d.dept_name
from employees e
join department d on e.emp_id=d.emp_id;
select * from emp_details;

                                   -- SQL QUESTION 3 : COMPLEX VIEW --
                                   
create view  full_emp_details as
 select e.emp_id,e.emp_name,e.gender,
 d.dept_id,d.dept_name,
 s.net_salary
 from employees e
 join department d on e.emp_id=d.emp_id
 join salary s on d.dept_id=s.dept_id;

select * from full_emp_details;











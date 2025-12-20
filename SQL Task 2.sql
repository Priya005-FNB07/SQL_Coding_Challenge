                             --SQL Question 1: Primary Key & Foreign Key--
create database bookstore;                             
use bookstore;
create table books (
book_id int primary key auto_increment,
title varchar(100),
author varchar(50),
isbn varchar(15)
);
create table orders (
order_id int primary key,
book_id int ,
customer_name varchar(30),
order_date date,
order_status varchar(20),
total_amount decimal(10,2),
foreign key (book_id) references books(book_id)
);
                                --SQL Question 2 : UNIQUE Constraint--
alter table books add unique( isbn);
insert into books(title,author,isbn)
values('atomic Habits','james clear',9780735211292),
('think and grow rich','napoleon hill',9781585424337),
('wings of fire','A.P.J',9788173711466);
select *from books;
insert into orders
values(101,2,'ramya','2025-07-20','deliverd',675.00),
(102,3,'priya','2025-08-15','deliverd',700.00);
select * from orders;
					       -- SQL Question 3 : DELETE Vs TRUNCATE--
delete from books
where book_id = 1;                         
select *from books;
truncate table orders;       
 select * from orders;                    
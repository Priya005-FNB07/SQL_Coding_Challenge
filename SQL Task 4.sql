                           -- SQL Task 4 : SORTING & AGGREGATES--
create database ecommerce;                   
use ecommerce;
create table product (product_id int primary key auto_increment,
product_name varchar(50),
price decimal(10,2)
);
create table employees(
department varchar(30),
employee_counts int
);
insert into product(product_name,price)
values('phone',7000.00),('headphone',700.00),('smartwatch',3000.00),
('earphone',800.00),('watch',2000.00),('battery',1500.00),('cell',2100.00);
select * from product;
insert into employees(department,employee_counts)
values('sales', 7),('accounts',12),('marketing',14),
('IT',15),('finance',17),('stock',8),('shipping',12),
('HR',20),('team worker',14),('team leader',8),('operator',11);
select *from employees;
                        --SQL Question 1: ORDER BY & LIMIT--
select * from product order by price desc limit 3;
						--SQL Question 2: AGGREGATE FUNCTION --
select count(product_name) as total_count,
sum(price) total_sale,
avg(price) average_sales,
max(price),
min(price)from product;
                        --SQL Question 3: GROUP BY & HAVING--
select  *from employees
having employee_counts >10;

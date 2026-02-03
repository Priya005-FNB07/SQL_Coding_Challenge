                            -- SQL QUESTION 1: TRIGGER---
create database orders_data;
use orders_data;
create table orders(order_id int,
cust_id int,order_date date,
amount decimal(10,2));
insert into orders(order_id,
cust_id,order_date,
amount)
values(1000,101,'2023-03-02',2000.00),
(1001,102,'2024-01-05',4000.00);
select *from orders;
create table order_history(order_id int,
cust_id int,order_date date,
amount decimal(10,2),deleted_on datetime
);
delimiter $$
create trigger trg_after_orders_delete
after delete on orders
for each row
begin
insert into order_history
(order_id,cust_id,order_date,amount,deleted_on)
values(old.order_id,old.cust_id,old.order_date,old.amount,now());
end$$
delimiter ;
select *from order_history;

                                       ---SQL QUESTION :2 DCL COMMANDS----
select user();
select user,host from mysql.user;
create user ram@localhost identified by '12345';
show grants for ram@localhost;

grant select on bookstore.* to ram@localhost;
grant insert on bookstore.books to ram@localhost;

revoke select on bookstore.* from ram@localhost;
revoke insert on bookstore.books from ram@localhost;
drop user ram@localhost;
select user();

								----SQL QUESTION :3 TCL COMMANDS-----
 create database tcl;                       
 use tcl;                       
  create table bank_ac(name varchar(15),age int(5),
  ac_no int(10),balance decimal(8,2));
  insert into bank_ac
  values('arun',27,500781,10000.00),
  ('anand',32,500791,23000.00),
  ('priya',31,500671,25000.00);
  select * from bank_ac;
  start transaction;
  set sql_safe_updates=0;
  update bank_ac
  set age=28
  where name='priya';
  update bank_ac
  set balance=15000.00
  where name='anand';
  select * from bank_ac;
  rollback;
  select * from bank_ac;
  START TRANSACTION;
  insert into bank_ac
  values('ramesh',35,500981,40000.00),
  ('kalai',40,500432,37000.00);
  SAVEPOINT insert_a_new;
  select *from bank_ac;
  update bank_ac
  set age=39
  where name='ramesh';
  select*from bank_ac;
  rollback to SAVEPOINT insert_a_new;
  select*from bank_ac;
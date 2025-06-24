create database xyz;
use xyz;

use college;

create table employees(
 id int primary key,
 name varchar(20),
 salary int not null
 );
 
 insert into employees values
 (1,'adam',25000),
 (2,'bob',30000),
 (3,'cassey',35000);
 
 select * from employees;
 
-- group by
-- Avg marks in each city in ascending order
 select city, avg(marks) from student group by city order by city asc;
 
 
 -- table 3 , payment table
create table payment(customer_id int primary key,
 customer varchar(30),
 mode varchar(30),
 city varchar(30)
 );

INSERT INTO payment VALUES
(101, 'Olivia Barrett', 'Netbanking', 'Portland'),
(102, 'Ethan Sinclair', 'Credit Card', 'Miami'),
(103, 'Maya Hernandez', 'Credit Card', 'Seattle'),
(104, 'Liam Donovan', 'Netbanking', 'Denver'),
(105, 'Sophia Nguyen', 'Credit Card', 'New Orleans'),
(106, 'Caleb Foster', 'Debit Card', 'Minneapolis'),
(107, 'Ava Patel', 'Debit Card', 'Phoenix'),
(108, 'Lucas Carter', 'Netbanking', 'Boston'),
(109, 'Isabella Martinez', 'Netbanking', 'Nashville'),
(110, 'Jackson Brooks', 'Credit Card', 'Boston');

select * from payment;

-- find total payment according to each payment method
select mode,count(mode) from payment group by mode;

-- find total payment according to each payment method made by each customer
select mode,count(customer) from payment group by mode;
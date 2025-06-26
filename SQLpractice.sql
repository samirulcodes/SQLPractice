CREATE database if not exists college; -- create database name college if not exists college DB
DROP database if exists college;       -- drop database name college if exists college DB

create database college;
use college;

-- table 1
create table student(
 rollno int primary key,
 name varchar(30),
 marks int not null,
 grade varchar(30),
 city varchar(30)
);


insert into student values
(101,'Anil',78,'C','Pune'),
(102,'Bhumika',93,'A','Mumbai'),
(103,'Chetan',85,'B','Mumbai'),
(104,'Dhruv',96,'A','Delhi'),
(105,'Emanuel',12,'F','Delhi'),
(106,'Farah',82,'B','Delhi');


select name,marks from student;
select * from student;
select city from student;
select distinct city from student;  -- distinct - only unique value will display , like only three 3 display no repeated city will display

-- where clause
select * from student where marks > 80;
select * from student where city = 'Mumbai';

-- and operator
select * from student where city = 'Mumbai' and marks >=90 ;

-- or operator
select * from student where city = 'Mumbai' or marks >=90 ;

-- between
select * from student where marks between 80 and 90 ;

-- in (match any value in the list)
select * from student where city in ('Delhi','Mumbai') ;

-- NOT (not make true= false and false=true)
select * from student where city not in ('Delhi','Mumbai') ; -- in this case 'delhi' and 'mumbai' not display only 'pune' will display

-- limit 
select * from student limit 3;
select * from student where marks > 85 limit 3 ;

-- order by (ascending or descending)
select * from student order by marks desc ;
select * from student order by marks desc limit 3 ;
select * from student order by marks asc ; -- by default print in asc , not necessary to write asc for ascending
select * from student order by marks;       -- by default print in asc , not necessary to write asc for ascending

-- Aggregate functions

-- MAX
select max(marks) from student;

-- MIN
select min(marks) from student;

-- COUNT
select count(name) from student;

-- AVG
select avg(marks) from student;

-- sum
select sum(marks) from student;

-- GROUP BY (generally we use group by with Aggregate functions, it combines similar rows, producing a single results row)
-- count number of student in each city
select city,count(name) from student group by city;

-- Multiple group by
select city,name , count(name) from student group by city,name;

-- Avg marks in each city
select city, avg(marks) from student group by city;

-- find name of student how much grade got by each student like A,B,C,F
select grade , count(name) from student group by grade order by grade;

-- Having clause ( this is similar to where clause but it can be user with group by clause )
-- count no. of student in each city where max marks cross 90
select city , count(name) from student group by city having max(marks) > 90 ;

-- count no. of student in each city where max marks cross 90 in descending order
select city , count(name) from student group by city having max(marks) > 90 order by city desc;

-- general order
select city from student
 where grade = 'A' 
 group by city 
 having max(marks) > 90 
 order by city desc;



-- table 2 (unique)
create table temp1(id int unique); -- unique - only unique value allow no duplicate
insert into temp1 values(101);
insert into temp1 values(101);

select * from temp1;


-- default constraint
create table emp(
id int,
salary int default 30000
);

insert into emp (id) values (101);
insert into emp (id) values (102);

select * from emp;


-- CREATE VIEW (it can create a virtual table and we can perform diff. query also in this virtual table)
create view VIEW1 as select rollno,full_name,marks from student;

select * from VIEW1;

select * from VIEW1 where marks > 90;

set sql_safe_updates=0;

delete from  VIEW1;


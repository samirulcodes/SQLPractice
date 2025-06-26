use college;

-- PRIMARY KEY
create table student(
 rollno int primary key,
 name varchar(30)
 );

create table temp1(
id int,
name varchar(20),
age int,
city varchar(20),
primary key (id,name) -- another syntax to declare primary key and two coloumns can be PK and combination of both(like id & name) will be unique. 
);



-- FOREIGN KEY
create table dept(
 id int primary key,
 name varchar(30)
);

insert into dept values
(101,'English'),
(102,'IT');

select * from dept;

update dept set id=103 where id = 102; -- this update will also reflect in teacher table as using cascading
update dept set id=100 where id = 101; -- this update will also reflect in teacher table as using cascading
 
create table teacher(
 id int primary key,
 name varchar(30),
 dept_id int,
 foreign key (dept_id) references dept(id)
 on update cascade  -- if any update made in dept table then it will reflect also in teacher table using cascade 
 on delete cascade  -- if any delete made in dept table then it will reflect also in teacher table using cascade.
-- NOTE :  we want only update in primary table(dept table) then in this case dont use cascade so that no update or delete reflect in child table(teacher)
);


insert into teacher values
(101,'Adam',101),
(102,'Eve',102);

select * from teacher;
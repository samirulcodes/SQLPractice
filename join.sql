use college;

create table stud(
 id int primary key,
 name varchar(30)
);

insert into stud values
(101,'Adam'),
(102,'Bob'),
(103,'Charlie');

select * from stud;
 
create table course(
 id int primary key,
 course varchar(30)
);

insert into course values
(102,'English'),
(103,'Science'),
(105,'JS'),
(107,'Python');

select * from course;

-- inner join
select * from stud as s
inner join course as c 
on s.id=c.id;

select s.name,c.course
from stud as s inner join
course as c
on s.id=c.id;

-- LEFT JOIN
select * from stud as s
left join course as c
on s.id=c.id;

select s.name,c.course
from stud as s left join 
course as c on
s.id=c.id;

-- RIGHT JOIN
select * from stud as s 
right join course as c
on s.id=c.id;

select s.name,s.id,c.id,c.course
from stud as s right join 
course as c on
s.id=c.id;

-- FULL OUTER JOIN
select * from stud as s left join course as c on s.id=c.id union
select * from stud as s right join course as c on s.id=c.id;


select s.name,
s.id,
c.id,
c.course
from stud as s left join course as c on s.id=c.id union
select 
s.name,
s.id,
c.id,
c.course 
from stud as s right join course as c on s.id=c.id;


-- LEFT EXCLUSIVE ( sirf left table ka value return hoga because left join left table ka pura data + common data from right table retrun hoga but with exclusive condition ke sath only left table return hoga)
select * from stud as s
left join course as c
on s.id=c.id
where c.id is null;

-- RIGHT EXCLUSIVE ( sirf right table ka value return hoga because right join right table ka pura data + common data from left table retrun hoga but with exclusive condition only right table return hoga )
select * from stud as s
right join course as c
on s.id=c.id
where s.id is null;

-- SELF JOIN ( it is a regular join but the table is join with itself )
create table employee(
id int primary key,
name varchar(30),
manager_id int
);

insert into employee values
(101,'Adam',103),
(102,'Bob',104),
(103,'Charlie',null),
(104,'Donald',103);

select * from employee as a
join employee as b
on a.id=b.manager_id;

select a.name as manager_name,b.name from employee as a
join employee as b
on a.id=b.manager_id;


-- UNION ( from 2 table it gives only unique value )
select id from stud UNION
select id from course;

-- UNION ALL ( from 2 table it gives duplicate value also )
select id from stud UNION ALL
select id from course;



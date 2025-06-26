use college;

-- WHERE

-- Q. Get names of all student who scored more than class avg.
-- step 1 : find avg of class
-- step 2 : find names of students with marks > avg

select avg(marks) from student; -- setp 1 solved (avg=90)

select full_name,marks from student where marks > 90; -- step 2 solved (but writing  90 manually can create prob. so write in nested queryt)

-- NESTED QUERY

select full_name,marks from student where marks > (
select avg(marks) from student
);


-- Q. Find the names of all students with even roll no.alter
-- Step 1 : Find the even roll no.
-- step 2 : find the names of student with even roll no.

-- Step 1
select rollno from student where rollno % 2= 0;

-- step 2
select full_name, rollno from student where rollno in (102,104,106);

-- NESTED ( step 1 & 2 )
select full_name, rollno from student where rollno in (
select rollno from student where rollno % 2= 0
);


-- FROM

-- Q. Find the max marks from students of delhi 
-- step 1 : Find the name of student
-- step 2 : find their max marks  using the sublist in step 1

-- step 1
select full_name,city from student where city='delhi';  -- name of delhi student

-- step 2
select max(marks) from student where city='Delhi';

-- NESTED (setp 1 & 2 )

select max(marks) 
from ( select * from student where city='Delhi' ) as temp; -- max marks from delhi

select max(marks) 
from ( select * from student where city='Mumbai' ) as temp; -- max marks from mumbai

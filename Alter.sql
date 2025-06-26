-- Alter Table ( To add new columns , drop column , rename table , change column name , modify column)
use college;

-- Add column
alter table student add column Age int not null default 18;

-- Modify ( to modify the datatype or constraints(pk,not null) )
alter table student modify age varchar(2);  -- modified data type from int to varchar(2)

-- Chnage column name 
alter table student change column Age Student_Age int;  -- datatype is int, chnaging col name from age to student_age

-- Drop 
alter table student drop column Student_Age;

-- Rename
alter table student rename to stud;
alter table stud rename to student;

select * from student;
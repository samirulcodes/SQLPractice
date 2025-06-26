-- TRUNCATE TABLE ( it delete entire data of table but table structure will not delete )
-- DROP TABLE  ( it delete entire data of table with table structure i.e; delete table data + table structure )

use college;

set sql_safe_updates=0;

-- UPDATE - it is use for updating the rows
update student set grade='O' where grade='A';

update student set marks=83,grade='E' where rollno=105;

update student set grade='B' where marks between 80 and 90;

-- updating marks of each student by 1
update student set marks=marks+1;

update student set marks=12 where rollno=105;

select * from student;


-- DELETE - it is use to delete existing rows
-- delete from student -- it will delete entire rows form student table , ! warnimg , use delete with where condition

delete from student where marks < 33;

select * from student;


-- TRUNCATE TABLE ( it delete entire data of table but table structure will not delete )
-- truncate table student;  -- this will delete entire data but table structure will not delete

-- DROP TABLE 
-- drop table student;  -- it delete entire data of table with table structure
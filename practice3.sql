use Practice;


CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    gender VARCHAR(10),
    grade CHAR(1),
    marks INT
);

INSERT INTO students VALUES
(1, 'John', 18, 'Male', 'A', 85),
(2, 'Maria', 17, 'Female', 'B', 72),
(3, 'Alex', 18, 'Male', 'A', 90),
(4, 'Sara', 19, 'Female', 'C', 65),
(5, 'David', 17, 'Male', 'B', 70);

select * from students;

-- Get all students with marks greater than 80.
select * from students where marks > 80; 

-- Count number of students in each grade.
select grade,count(name) from students group by grade;

-- Get the average marks of male and female students.
select gender ,avg(marks) from students group by gender;

-- List students who scored the highest marks.
select student_id, name,marks
from students where marks =
(select max(marks) from students);

-- Another meth
select max(marks) from students;

-- Get students sorted by marks descending.
select * from students order by marks desc;






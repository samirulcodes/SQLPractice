create database if not exists Practice;
use Practice;

CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(100),
    salary INT,
    manager_id INT,
    join_date DATE
);

insert into Employees values
(101,'Alice','HR',60000,NULL,'2020-01-15'),
(102,'Bob','IT',70000,101,'2021-02-20'),
(103,'Charlie','IT',72000,101,'2021-06-18'),
(104,'Diana','Finance',68000,101,'2022-03-01'),
(105,'Eve','HR',62000,101,'2023-01-12');

select * from Employees;

-- Get all employees in the IT department.
select * from Employees where department='IT';

-- Find the employee with the highest salary.
select * from Employees order by salary desc limit 1;

-- Another methods
select max(salary) from Employees limit 1;

-- Count employees in each department.
select department , count(name) from Employees group by department;

-- List employees who joined after 2021.
select * from Employees where join_date >'2021-12-31';

-- Get names of employees along with their manager's name (self join).
select a.name as manager_name,b.name from Employees as a
join Employees as b on a.emp_id=b.manager_id;

-- Get the second highest salary from the table.
select max(salary) 
from Employees 
where salary < (select max(salary) from Employees);

-- Another methods 2nd highest salary
select * from Employees order by salary desc limit 1 offset 1; -- offset 1 - skip the first row

-- Another methods 3rd highest salary
select * from Employees order by salary desc limit 1 offset 2; 


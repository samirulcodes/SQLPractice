-- 1. Find the 2nd Highest Salary
select max(salary) from emp where salary < 
(select max(salary) from emp);

-- 2. Count Of Employees in Each Department
select dept,count(*) as total from emp group by dept;

-- 3. Find Duplicate Records
select name,count(*) from emp group by name having count(*) > 1;

-- 5. Find Employees Who joined in 2024
select name from emp where year(join_date)=2024;

-- 6. Find Customers Without Orders
select * from emp as e left join orders as o
on e.customer_id=o.customer_id
where o.customer_id is null;

select * from emp where customer_id is null ;

-- 7. Get Total Salary by Department
select dept ,sum(salary) from emp group by dept ;

-- 8. Find Nth Highest Salary (Nth = 3)
select distinct salary from
emp order by salary desc limit 1 offset 2;

-- 9. Get Employee Details with Department Names
select * from emp as e join
dept as d on e.emp_id=d.emp_id;

-- 12 Find employees earning more than average salary
select * from emp where salary >
(select avg(salary) from emp );

-- 13 Write a query to count how many employees share the same salary
select salary ,count(*) as emp_count from emp group by salary having count(*) > 1;

-- 14 Write a query to find the most frequently occurring value in a column
select name ,count(*) as freq from emp group by name order by freq desc limit 1;

-- 16 How to get the common records from two tables?
-- select name from emp 
-- intersect 
-- select name from order;

-- 17 How to find employees whose salary is higher than their manager's salary?
select * from emp as e join
emp as m on e.emp_id=m.manager_id
where e.salary > m.salary;


-- LinkedIn sql practice set

-- Write a qury find duplicate row in a table
select name,count(*) as count from emp
group by name having count(*) > 1;
 
-- second highest salary
select max(salary) from employee 
where salary <
(select max(salary) from empoyee);

-- find employee salary more than their manager
select * from employee as e
join employee as m 
on e.employee_id=m.manager_id
where e.salary > m.salary;

-- top 3 performing prdouct based on sale
select * from employee order by sales desc limit 3 ;

-- identify customer who made transaction above $5000 multiple times
select customer_id ,count(*) as total from employee
where transaction > 5000
group by customer_id
having count(*) > 1;


-- find customer who have not made any purchase in last 6 months
/*select c.customer_id, c.name from customer as c
left join trabsaction as t
on c.customer_id=t.customer_id
and t.transaction_date >= current_date()- interval '6 months' 
where t.customer_id is null;
*/

-- find max transaction amount for each customer
select customer_id,max(amount) from transaction
group by customer_id; 

-- identify most profitable top 3 region based on transaction data
select region,sum(amount) as profit
from emp group by region
order by profit desc limit 3 ;

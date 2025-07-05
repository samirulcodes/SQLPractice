use xyz;

create table test_data(
new_id int , 
new_category varchar(30) 
);

insert into test_data values
(100,'Agni'),
(200,'Agni'),
(200,'Agni'),
(300,'Vayu'),
(400,'Vayu'),
(500,'Dharti'),
(500,'Agni'),
(600,'Dharti');

select * from test_data;

-- Windows function on Aggregate function

-- partition by - make a group like there is agni,vayu , so it make a group like a group by
-- over - it is a clause for performing windows function
select new_id,new_category,
sum(new_id) over (partition by new_category order by new_id) as "Total",
avg(new_id) over (partition by new_category order by new_id) as "Average",
count(new_id) over (partition by new_category order by new_id) as "Count",
min(new_id) over (partition by new_category order by new_id) as "Minimum",
max(new_id) over (partition by new_category order by new_id) as "Maximum" 
from test_data;


-- Windows function on Aggregate function without partition by , so it will not make a group ,it provide value for entire rows
-- rows between unbounded preceding and unbounded following - all data will come same for all rows
select new_id,new_category,
sum(new_id) over (order by  new_id rows between unbounded preceding and unbounded following) as "Total",
avg(new_id) over (order by  new_id rows between unbounded preceding and unbounded following) as "Total",
count(new_id) over (order by  new_id rows between unbounded preceding and unbounded following) as "Total",
min(new_id) over (order by  new_id rows between unbounded preceding and unbounded following) as "Total",
max(new_id) over (order by  new_id rows between unbounded preceding and unbounded following) as "Total"
from test_data;


-- windows function on RANK()
select new_id,
row_number() over (order by new_id) as "Row Number",
rank() over (order by new_id) as "Rank",
dense_rank() over (order by new_id) as "Dense Rank",
percent_rank() over (order by new_id) as "Percent Rank"
from test_data;


-- ROW_NUMBER()
-- Gives a unique number to each row, even if values are the same.
-- Numbers are always in sequence (1, 2, 3, 4, ...). basically provide a ,like serial number

-- RANK()
-- Ranks rows. If there are same value, it skips the next number(s).
-- like 1,2,2,3,4 - o/p -- rank()-> 1,2,2,4,5 ---- here 1 is unique but 2 is repeating so rank will be 2 & 2 but for 3
-- it does not provide rank 3 it provide rank 4 because it skip to next number , suppose 2 is repeating 10 times so it skip 10 number provide its next number like 11

-- Name	Score	RANK()
-- A	90	1
-- B	90	1
-- C	85	3
-- D	80	4
-- Notice rank 2 is skipped because two is same for rank 1, and for name c it provide rank 3)

-- DENSE_RANK()
-- Like RANK(), but doesn’t skip numbers after ties.
-- like 1,2,2,3,4 - o/p -- rank()-> 1,2,3,4,5 ---- here 1 is unique even 2 is repeating then also rank will be 2 & 3 , as it does not skip
-- it provide rank 3 for 2 , suppose 2 is repeating 10 times so it will not skip 10 number provide dense_rank like 1,2,3,4,5,...11

-- Name	Score	DENSE_RANK()
-- A	90	1
-- B	90	1
-- C	85	2
-- D	80	3

-- No skipping — after rank 1, next is 2, here dense_rank repeating 1 & 1 two time , so it not move to 3 provide 2, as it does not skip)


-- Analytical Function
 --  last_value-- prove as it is same coloumn like performing on new_id , so same value will come and if want to see last value like 100,200,300 
 -- and last value will be 300 so need to use rows between unbounded preceding and unbounded following
-- first_value - like 100,200,300 - so its first value like 100
select new_id,
first_value(new_id) over (order by new_id) as "first value",  
last_value(new_id) over (order by new_id ) as "last value", 
last_value(new_id) over (order by new_id rows between unbounded preceding and unbounded following) as "last value 1", 
lead(new_id) over (order by new_id) as "lead",
lag(new_id) over (order by new_id) as "lag"
from test_data;

-- practice
select new_id,
lead(new_id,2) over (order by new_id) as "Lead",  -- here new_id,2 , so 2 means skip 2number and provide 2 times null at last
lag(new_id,2) over (order by new_id) as "lag"	-- here new_id,2 , so 2 means skip 2number and provide 2 times null at starting
from test_data;


create table xyz(
new_id int , 
new_category varchar(30) 
);

-- NOTE : 
-- LEAD : if number strt from 1000,200,300 then also it skip 1000 and take next number 200 and same for , LAG

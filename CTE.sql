-- CTE
use xyz;

create table payments(
customer_id varchar(30),
amount int ,
mode varchar(30),
payment_date date
);

INSERT INTO payments VALUES
(1 ,  60, 'Cash','2020-09-24'),
(11,  80, 'Cash', '2021-03-01'),
(2 , 500, 'Credit Card','2020-04-27'),
(8 , 100, 'Cash','2021-01-26'),
(7 ,  20, 'Mobile Payment','2021-02-01'),
(17, 250, 'Credit Card','2021-04-01'),
(10,  70, 'Mobile Payment','2021-02-28');


create table customers(customer_id int, 
first_name varchar(30), 
last_name varchar(30), 
address_id int
);
INSERT INTO customers VALUES
(1 , 'Mary', 'Smith' , 5),
(3 , 'Linda' , 'Williams', 7),
(4 , 'Barbara','Jones', 8),
(2 , 'Madan' , 'Mohan', 6),
(17, 'R', 'Madhav', 9);

select * from payments;
select * from customers;

-- 1st 
with my_cte as(
      select * , 
      AVG(amount) over (order by p.customer_id) AS "Average Price",
      COUNT(address_id) over (order by c.customer_id ) AS "Count"
      FROM payments as p
      inner join customers as c
      on p.customer_id=c.customer_id
)
select first_name,last_name from my_cte;


-- 2nd
with my_cp AS(
      select * , 
      AVG(amount) over (order by p.customer_id) AS "Average Price",
      COUNT(address_id) over (order by c.customer_id ) AS "Count"
      FROM payments as p
      inner join customers as c
      on p.customer_id=c.customer_id
),
my_ca AS (
select * from customer as c
inner join address as a
on a.address_id=c.address_id
inner join country as cc
on cc.city_id=a.city_id
)
select cp.first_name ,cp.last_name.ca,city,ca.country,cp.amount
from my_ca as ca , my_cp as cp;


with my_cte as(
      select mode , max(amount) as highest_price ,sum(amount) as total_price
      from payments 
      group by mode
)
select payments.*,my.highest_price,my.total_price
from payments
join my_cte my
on payments.mode=my.mode
order by payments.mode
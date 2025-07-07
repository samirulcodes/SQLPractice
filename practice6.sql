use xyz;

CREATE TABLE Customers2 (
  customer_id INT PRIMARY KEY,
  name        VARCHAR(100),
  email       VARCHAR(100),
  city        VARCHAR(50)
);

CREATE TABLE Orders (
  order_id    INT PRIMARY KEY,
  customer_id INT,
  order_date  DATE,
  amount      DECIMAL(10,2)
);

INSERT INTO Customers2  VALUES
(1 , 'Raj Sharma'  , 'raj@example.com'   , 'Mumbai'),
(2 , 'Priya Gupta' , 'priya@example.com' , 'Delhi'),
(3 , 'Anil Kumar'  , 'anil@example.com'  , 'Bengaluru'),
(4 , 'Sunita Rao'  , 'sunita@example.com', 'Kolkata'),
(5 , 'Vikram Singh', 'vikram@example.com', 'Mumbai'),
(6 , 'Asha Patel'  , 'asha@example.com'  , 'Ahmedabad'),
(7 , 'Rohit Das'   , 'rohit@example.com' , 'Chennai'),
(8 , 'Sneha Singh' , 'sneha@example.com' , 'Jaipur'),   -- no orders
(9 , 'Rohan Mehta' , 'raj@example.com'   , 'Pune'),     -- duplicate email
(10, 'Meena Nair'  , 'priya@example.com' , 'Kochi');

INSERT INTO Orders VALUES
(1 , 1, '2024-02-05', 250.00),
(2 , 1, '2024-02-18', 300.00),
(3 , 1, '2024-03-20', 150.00),
(4 , 1, '2024-05-10', 500.00),
(5 , 2, '2023-11-15', 400.00),
(6 , 2, '2024-01-12', 350.00),
(7 , 2, '2024-07-05', 200.00),
(8 , 3, '2024-02-25', 600.00),
(9 , 3, '2024-02-28', 250.00),
(10, 3, '2024-04-01', 150.00),
(11, 3, '2024-04-21', 200.00),
(12, 3, '2024-07-01', 300.00),
(13, 4, '2025-01-15', 800.00),
(14, 4, '2025-06-25', 450.00),
(15, 5, '2024-02-14', 500.00),
(16, 5, '2024-02-20', 400.00),
(17, 6, '2023-12-05', 300.00),
(20, 6, '2024-05-15', 200.00),
(18, 7, '2024-08-09', 250.00),
(19, 7, '2024-08-19', 350.00);

select * from Customers2;
select * from Orders;

-- Get all customers from Mumbai.
select * from Customers2 where city='Mumbai';

-- List all orders placed in 2024.
select * from Orders where YEAR(order_date) = 2024;

-- Count total number of customers.
select count(*) as Total from Customers2;

-- Get total order amount by each customer.
select customer_id,sum(amount) as Total_spent from Orders
group by customer_id ;

-- List customers who haven’t placed any orders.
select * from Customers2 as c
left join Orders as o
on c.customer_id=o.customer_id
where o.order_id is null;

-- Find the customer with the highest total spending.
select customer_id,sum(amount)  total_spent
from Orders group by customer_id 
order by total_spent desc limit 1;

-- Count total number of orders per month.
select month(order_date) , count(*) as total_orders
from Orders 
group by month(order_date);

-- Get all orders placed in February 2024.
select * from Orders where order_date between '2024-02-01' and '2024-02-29';

-- Show customer name along with their order details (use JOIN).
SELECT c.name, o.order_id, o.order_date, o.amount
FROM Customers2 as c
JOIN Orders as o ON c.customer_id = o.customer_id;

-- Get cumulative spending per customer using SUM() OVER
select  customer_id,order_id, amount ,
sum(amount) over (partition by customer_id order by order_date ) as cumulative_spending
from Orders;
 
-- Top 3 customers by total spending.
select customer_id,sum(amount)as total_spent from Orders 
group by customer_id
order by total_spent desc limit 3;

-- Find the average order amount per customer.
select customer_id,avg(amount) as Average from Orders 
group by customer_id;

-- Find duplicate emails in the Customers table.
select email,count(*) as duplicate
from Customers2 group by email
having count(*) > 1;

-- Find customers who placed more than 3 orders.
select customer_id,count(*) as Order_placed 
from Orders group by customer_id
having count(*) > 3;

-- Rank customers by total spending using RANK().
SELECT customer_id, SUM(amount) AS total_spent,
       RANK() OVER (ORDER BY SUM(amount) DESC) AS spending_rank
FROM Orders
GROUP BY customer_id;




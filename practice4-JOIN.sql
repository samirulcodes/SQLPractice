use Practice;

-- Customers Table
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    city VARCHAR(100)
);

INSERT INTO Customers VALUES
(1, 'Aditi', 'Mumbai'),
(2, 'Rahul', 'Delhi'),
(3, 'Neha', 'Bangalore');

-- Orders Table
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    amount DECIMAL(10,2)
);

INSERT INTO Orders VALUES
(101, 1, '2024-01-01', 1000.00),
(102, 1, '2024-02-15', 2000.00),
(103, 2, '2024-02-20', 1500.00),
(104, 3, '2024-03-05', 3000.00);

select * from Customers;
select * from Orders;

-- Get total order amount by each customer.
select  customer_id,sum(amount) from Orders group by  customer_id;

-- List customers who haven't placed any orders
select c.customer_name,c.customer_id from Customers as c
left join Orders as o on
c.customer_id=o.order_id
where o.order_id is null;

-- Find the customer with the highest total spending
select customer_id,sum(amount) as total_amount_spent from Orders
 group by customer_id order by total_amount_spent desc limit 1;
 
-- Another meth
select customer_id,max(amount) from Orders;
 
-- Use JOIN to show customer name along with order details
select c.customer_name,o.order_id,o.order_date,amount
from Customers as c join
Orders as o 
on c.customer_id=o.customer_id;

-- Get all orders placed in February 2024
select * from Orders where order_date between '2024-02-01' and '2024-02-29';

-- Find common data from both table
select * from Customers as c 
inner join Orders as o
on c.customer_id=o.customer_id;


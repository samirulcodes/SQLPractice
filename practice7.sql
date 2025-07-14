use xyz;

CREATE TABLE RetailSales (
    TransactionID INT PRIMARY KEY,
    Date DATE NOT NULL,
    CustomerID VARCHAR(50) NOT NULL,
    Gender VARCHAR(10) NOT NULL,
    Age INT NOT NULL,
    ProductCategory VARCHAR(100) NOT NULL,
    Quantity INT NOT NULL,
    PricePerUnit INT NOT NULL,
    TotalAmount INT NOT NULL
);

INSERT INTO RetailSales  VALUES
(1, '2023-11-24', 'CUST001', 'Male', 34, 'Beauty', 3, 50.00, 150.00),
(2, '2023-02-27', 'CUST002', 'Female', 26, 'Clothing', 2, 500.00, 1000.00),
(3, '2023-01-13', 'CUST003', 'Male', 50, 'Electronics', 1, 30.00, 30.00),
(4, '2023-05-21', 'CUST004', 'Male', 37, 'Clothing', 1, 500.00, 500.00),
(5, '2023-05-06', 'CUST005', 'Male', 30, 'Beauty', 2, 50.00, 100.00),
(6, '2023-04-25', 'CUST006', 'Female', 45, 'Beauty', 1, 30.00, 30.00),
(7, '2023-03-13', 'CUST007', 'Male', 46, 'Clothing', 2, 25.00, 50.00),
(8, '2023-02-22', 'CUST008', 'Male', 30, 'Electronics', 4, 25.00, 100.00),
(9, '2023-12-13', 'CUST009', 'Male', 63, 'Electronics', 2, 300.00, 600.00),
(10, '2023-10-07', 'CUST010', 'Female', 52, 'Clothing', 4, 50.00, 200.00),
(11, '2023-02-14', 'CUST011', 'Male', 23, 'Clothing', 2, 50.00, 100.00),
(12, '2023-10-30', 'CUST012', 'Male', 35, 'Beauty', 3, 25.00, 75.00),
(13, '2023-08-05', 'CUST013', 'Male', 22, 'Electronics', 3, 500.00, 1500.00),
(14, '2023-01-17', 'CUST014', 'Male', 64, 'Clothing', 4, 30.00, 120.00),
(15, '2023-01-16', 'CUST015', 'Female', 42, 'Electronics', 4, 500.00, 2000.00),
(16, '2023-02-17', 'CUST016', 'Male', 19, 'Clothing', 3, 500.00, 1500.00),
(17, '2023-04-22', 'CUST017', 'Female', 27, 'Clothing', 4, 25.00, 100.00),
(18, '2023-04-30', 'CUST018', 'Female', 47, 'Electronics', 2, 25.00, 50.00),
(19, '2023-09-16', 'CUST019', 'Female', 62, 'Clothing', 2, 25.00, 50.00),
(20, '2023-11-05', 'CUST020', 'Male', 22, 'Clothing', 3, 300.00, 900.00),
(21, '2023-01-14', 'CUST021', 'Female', 50, 'Beauty', 1, 500.00, 500.00),
(22, '2023-10-15', 'CUST022', 'Male', 18, 'Clothing', 2, 50.00, 100.00),
(23, '2023-04-12', 'CUST023', 'Female', 35, 'Clothing', 4, 30.00, 120.00),
(24, '2023-11-29', 'CUST024', 'Female', 49, 'Clothing', 1, 300.00, 300.00),
(25, '2023-12-26', 'CUST025', 'Female', 64, 'Beauty', 1, 50.00, 50.00),
(26, '2023-10-07', 'CUST026', 'Female', 28, 'Electronics', 2, 500.00, 1000.00),
(27, '2023-08-03', 'CUST027', 'Female', 38, 'Beauty', 2, 25.00, 50.00),
(28, '2023-04-23', 'CUST028', 'Female', 43, 'Beauty', 1, 500.00, 500.00),
(29, '2023-08-18', 'CUST029', 'Female', 42, 'Electronics', 1, 30.00, 30.00),
(30, '2023-10-29', 'CUST030', 'Female', 39, 'Beauty', 3, 300.00, 900.00),
(31, '2023-05-23', 'CUST031', 'Male', 44, 'Electronics', 4, 300.00, 1200.00),
(32, '2023-01-04', 'CUST032', 'Male', 30, 'Beauty', 3, 30.00, 90.00),
(33, '2023-03-23', 'CUST033', 'Female', 50, 'Electronics', 2, 50.00, 100.00),
(34, '2023-12-24', 'CUST034', 'Female', 51, 'Clothing', 3, 50.00, 150.00),
(35, '2023-08-05', 'CUST035', 'Female', 58, 'Beauty', 3, 300.00, 900.00),
(36, '2023-06-24', 'CUST036', 'Male', 52, 'Beauty', 3, 300.00, 900.00),
(37, '2023-05-23', 'CUST037', 'Female', 18, 'Beauty', 3, 25.00, 75.00),
(38, '2023-03-21', 'CUST038', 'Male', 38, 'Beauty', 4, 50.00, 200.00),
(39, '2023-04-21', 'CUST039', 'Male', 23, 'Clothing', 4, 30.00, 120.00),
(40, '2023-06-22', 'CUST040', 'Male', 45, 'Beauty', 1, 50.00, 50.00),
(41, '2023-02-22', 'CUST041', 'Male', 34, 'Clothing', 2, 25.00, 50.00),
(42, '2023-02-17', 'CUST042', 'Male', 22, 'Clothing', 3, 300.00, 900.00),
(43, '2023-07-14', 'CUST043', 'Female', 48, 'Clothing', 1, 300.00, 300.00),
(44, '2023-02-19', 'CUST044', 'Female', 22, 'Clothing', 1, 25.00, 25.00),
(45, '2023-07-03', 'CUST045', 'Female', 55, 'Electronics', 1, 30.00, 30.00),
(46, '2023-06-26', 'CUST046', 'Female', 20, 'Electronics', 4, 300.00, 1200.00),
(47, '2023-11-06', 'CUST047', 'Female', 40, 'Beauty', 3, 500.00, 1500.00),
(48, '2023-05-16', 'CUST048', 'Male', 54, 'Electronics', 3, 300.00, 900.00),
(49, '2023-01-23', 'CUST049', 'Female', 54, 'Electronics', 2, 500.00, 1000.00),
(50, '2023-08-24', 'CUST050', 'Female', 27, 'Beauty', 3, 25.00, 75.00);

CREATE TABLE customer_details (
    customer_id VARCHAR(10) PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(50),
    loyalty_points INT
);

INSERT INTO customer_details VALUES
('CUST001', 'John Doe', 'Toronto', 500),
('CUST002', 'Jane Smith', 'Montreal', 1200),
('CUST003', 'Robert Brown', 'Vancouver', 300),
('CUST004', 'Michael Davis', 'Calgary', 800),
('CUST005', 'William Wilson', 'Ottawa', 150),
('CUST006', 'Emily Johnson', 'Edmonton', 950),
('CUST007', 'Sophia Martinez', 'Winnipeg', 1100),
('CUST008', 'Olivia Anderson', 'Quebec City', 600),
('CUST009', 'James Taylor', 'Halifax', 700),
('CUST010', 'Emma Moore', 'Victoria', 400);

select * from RetailSales;
select * from customer_details;

-- 1. Find the total sales amount for each product category.
select ProductCategory,sum(TotalAmount) from RetailSales
group by ProductCategory;

-- 2. Which city has the highest total loyalty points?
select city,sum(loyalty_points) as highest_point from customer_details 
group by city order by highest_point desc limit 1;

-- 3. Find the top 3 customers who spent the most.
select CustomerID,sum(TotalAmount) as spent_most
from RetailSales group by CustomerID
order by spent_most desc limit 3;

-- 4. Calculate the average age of customers by gender.
select Gender, avg(Age) as avg_age
from RetailSales group by Gender;

-- 5. Retrieve all transactions where customers spent more than 1000.
select CustomerID,TransactionID,TotalAmount from RetailSales
where TotalAmount > 1000 ;

-- 6. List customers and their loyalty points for all transactions.
select r.CustomerID,
     r.TransactionID,
     r.Date,
     c.customer_id,
     c.customer_name, 
     c.city, 
     c.loyalty_points 
from RetailSales as r
join customer_details as c 
on r.CustomerID=c.customer_id ;

-- 7. What is the average quantity sold per product category?
select ProductCategory , sum(Quantity) as avg_quantity_sold
from RetailSales group by ProductCategory ;

-- 8. Find the total sales amount for each city.
select c.city, sum(r.TotalAmount) as total_sales
from RetailSales as r 
join customer_details as c 
on r.CustomerID=c.customer_id 
group by c.city order by total_sales desc;

-- 9. Which product category has the highest average unit price?
select ProductCategory, avg(PricePerUnit) as highest_avg_price
from RetailSales group by ProductCategory
order by highest_avg_price limit 1;

-- 10. Show all customers who have more than 500 loyalty points.
select   customer_id,customer_name,city, loyalty_points 
from customer_details where loyalty_points > 500 
order by loyalty_points desc;

-- 11. Rank customers by total spending.
select CustomerId,sum(TotalAmount),
  RANK() over ( order by sum(TotalAmount) desc ) as total_spending
from RetailSales 
group by CustomerId;

-- 12. Identify the most popular product category based on quantity sold.
select ProductCategory, sum(Quantity) as quantity_sold
from RetailSales group by ProductCategory
order by quantity_sold desc ;

-- 13. Find the cumulative sales for each customer.
select CustomerId,TotalAmount,
  sum(TotalAmount) over ( partition by CustomerId order by Date  ) as Cumulative_sales
from RetailSales ;

-- 14. Calculate the difference in loyalty points between the highest and lowest in each city.
select city, max(loyalty_points),min(loyalty_points),
max(loyalty_points) - min(loyalty_points) as diff_in_loyaltyPoints 
from customer_details group by city;

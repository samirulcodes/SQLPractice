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

CREATE TABLE customer_details (
    customer_id VARCHAR(10) PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(50),
    loyalty_points INT
);

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




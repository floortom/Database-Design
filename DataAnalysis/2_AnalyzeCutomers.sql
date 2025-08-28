-- Analyze customer behaviour
USE ecommerce_db;

-- 1. Top customers
-- Identify the top 5 customers who have spent the most on the platform
SELECT
	UserID,
  sum(TotalAmount) as TotalSpent
FROM
	Orders
GROUP BY
	UserID
ORDER BY
	TotalSpent DESC
LIMIT
	5
;

-- 2. Customer Lifetime Value (CLTV)
-- Calculate the Customer Lifetime Value (CLTV) for each customer, 
-- which is the total amount a customer has spent on the platform.
SELECT
	UserID,
  sum(TotalAmount) as CLVT
FROM
	Orders
GROUP BY
	UserID
ORDER BY
	CLVT DESC
;
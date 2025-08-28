USE ecommerce_db;

-- 1. Total Sales
-- Calculate the total revenue generated from all orders in the database.
SELECT
	SUM(TotalAmount) as TotalSales
FROM
	Orders
;

-- 2. Sales by month
-- Calculates the total sales for each month by formatting the OrderDate.
SELECT
	date_format(OrderDate, '%Y-%m') as Month,
  sum(TotalAmount) as MonthlySales
FROM
	Orders
GROUP BY
	Month
ORDER BY
	Month
;



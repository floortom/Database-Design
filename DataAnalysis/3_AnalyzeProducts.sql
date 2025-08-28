-- Analyzing Product Performance
USE ecommerce_db;

-- 1. Average Product Price
-- Calculate the average price of all products in the inventory.
SELECT
	avg(Price) as AveragePrice
FROM
	Products
;

-- 2. Total Inventory Value
-- Calculate the total value of the inventory by multiplying the price of each product by its stock quantity.
SELECT
	sum(Price * StockQuantity) AS InventoryValue
FROM
	Products
;
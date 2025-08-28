USE ecommerce_db;

-- 1. CHECK FOR MISSING DATA

-- Check for missing values in the Products table
-- This query identifies any records in the Products table where critical fields (ProductName, Price, StockQuantity) are missing.
SELECT * FROM Products 
WHERE
	ProductName IS NULL
  OR Price IS NULL
  OR StockQuantity IS NULL
;

-- This query checks the Users table for missing Email or UserName values, which are crucial for identifying users.
SELECT * FROM Users 
WHERE
	Email IS NULL
  OR UserName IS NULL
;

SELECT * FROM Orders
WHERE
	OrderDate IS NULL
  OR TotalAmount IS NULL
;

SELECT * FROM Payments
WHERE
	PaymentDate IS NULL
  OR Amount IS NULL
;
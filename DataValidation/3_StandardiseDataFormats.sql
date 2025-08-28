USE ecommerce_db;

-- 3. STANDADIZE DATA FORMATS
-- Check all dates in the Orders table are within a reasonable range
-- This query checks that the OrderDate field contains realistic dates, ensuring no dates are in the distant past or future.
SELECT * FROM Orders
WHERE
	OrderDate < "2000-01-01"
  OR OrderDate > CURDATE()
;
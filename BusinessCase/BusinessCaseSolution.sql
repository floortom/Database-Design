-- Business Case
USE ecommerce_db;

-- Add a new column 'ProductLaunchDate' to the 'Products' table
-- This column will store the launch date of each product
ALTER TABLE 
	products
ADD COLUMN
	ProductLaunchDate DATE;
  
-- Verify that the 'ProductLaunchDate' column has been added to the 'Products' table
DESCRIBE products;
SHOW COLUMNS FROM products; -- another way to verify

-- Update the 'ProductLaunchDate' for each category of products
/*
 Safe update mode requires that any UPDATE or DELETE statement must include a WHERE clause that filters by a key column to avoid unintended mass updates.
*/
ALTER TABLE products ADD INDEX idx_category (Category);
SHOW INDEXES FROM products;

UPDATE products
SET ProductLaunchDate = '2024-01-01'
WHERE Category = 'Widgets';

UPDATE products
SET ProductLaunchDate = '2024-02-01'
WHERE Category = 'Tools';

UPDATE products
SET ProductLaunchDate = '2024-03-01'
WHERE Category = 'Machines';

UPDATE products
SET ProductLaunchDate = '2024-04-01'
WHERE Category = 'Instruments';

UPDATE products
SET ProductLaunchDate = '2024-05-01'
WHERE Category = 'Gizmos';

UPDATE products
SET ProductLaunchDate = '2024-06-01'
WHERE Category = 'Gadgets';

UPDATE products
SET ProductLaunchDate = '2024-07-01'
WHERE Category = 'Devices';

UPDATE products
SET ProductLaunchDate = '2024-08-01'
WHERE Category = 'Contraptions';

UPDATE products
SET ProductLaunchDate = '2024-09-01'
WHERE Category = 'Widgets';

UPDATE products
SET ProductLaunchDate = '2024-10-01'
WHERE Category = 'Appliances';

UPDATE products
SET ProductLaunchDate = '2024-11-01'
WHERE Category = 'Apparatus';

SELECT
	ProductID,
  ProductName,
  ProductLaunchDate
FROM
	products
;

-- Count how many products have a 'ProductLaunchDate' that is not NULL
-- This ensures that the launch date was set for all applicable products
SELECT
	count(*)
FROM
	products
WHERE
	ProductLaunchDate IS NOT NULL
;

-- Retrieve products where 'ProductLaunchDate' is still NULL
-- This helps you identify any products that might have been missed
SELECT
	ProductID,
  ProductName,
  ProductLaunchDate
FROM
	products
WHERE
	ProductLaunchDate IS NULL
;

-- Add a check constraint to ensure that 'ProductLaunchDate' is not NULL
-- Also, it checks that the date is not before January 1, 2020
ALTER TABLE
	products
ADD CONSTRAINT
	chk_launchdate CHECK(
  ProductLaunchDate IS NOT NULL AND ProductLaunchDate >= '2020-01-01'
  )
;

-- Retrieve and display product details including the newly added 'ProductLaunchDate'
-- This helps you verify the integrity of the data after adding the constraint
SELECT
	ProductID,
  ProductName,
  ProductLaunchDate
FROM
	products
;

-- Group the products by 'ProductLaunchDate' and count how many products were launched on each date
-- This gives you an overview of product launches
SELECT
	ProductLaunchDate,
  count(*) as NumberOfProducts
FROM
	products
GROUP BY
	ProductLaunchDate
;
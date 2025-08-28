USE ecommerce_db;

-- 7. USING TRANSACTIONS TO MAINTAIN INTEGRITY
-- To process an order that affects both the Orders and Products tables
-- Transactions allow you to ensure that all parts of a multi-step operation are completed successfully before making any permanent changes.
START TRANSACTION;
-- Insert a new order
INSERT INTO
	Orders (OrderID, UserID, OrderDate, TotalAmount)
VALUES
	(1008, 43, '2024-08-17', 99.99)
;
-- Update stock quantity
UPDATE
	Products
SET
	StockQuantity = Stockquantity - 1
WHERE
	ProductID = 1677
;
-- If everything is successful
-- COMMIT finalizes the transaction, saving all changes made in the transaction.
COMMIT;
-- If something goes wrong
-- ROLLBACK undoes all changes made in the transaction, ensuring the database remains consistent.
ROLLBACK;
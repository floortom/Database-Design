USE ecommerce_db;

-- 6. CASCADING DELETES
-- If a user is deleted, ensure that their associated orders are also deleted to avoid orphaned records
-- This foreign key constraint ensures that if a user is removed from the Users table, 
-- their associated orders are automatically deleted.

ALTER TABLE	
	Orders
ADD CONSTRAINT
	fk_user
FOREIGN KEY
	(UserID) REFERENCES Users(UserID)
ON DELETE
	CASCADE
;
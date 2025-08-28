USE ecommerce_db;

-- 2. VALIDATE DATA FORMATS
-- Check that all email addresses in the Users table are correctly formatted
-- This query ensures that every email address follows a basic format (e.g., user@example.com). It's a simple way to catch obvious errors.
SELECT * FROM Users
WHERE
	Email NOT LIKE '%_@__%.__%'
;
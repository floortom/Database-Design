USE ecommerce_db;

-- 5. ENFORCING CONSTRAINTS
-- Ensure Non-Negative Prices
-- This constraint ensures that no product can have a negative price, which would be unrealistic.
ALTER TABLE
	Products
ADD CONSTRAINT
	chk_price CHECK (Price >= 0)
;

-- Ensure email addresses follow a basic format
-- This constraint enforces that every email in the Users table follows a standard format (e.g., user@example.com).
ALTER TABLE
	Users
ADD CONSTRAINT
	chk_email CHECK (Email LIKE '%_@__%.__%')
;
USE ecommerce_db;

-- 4. CHECK FOR DUPLICATE ENTRIES
-- Check for duplicate UserIDs in the Users table
-- This query looks for any duplicate UserIDs, which should be unique for each user.
SELECT
	UserID,
  COUNT(*)
FROM
	Users
GROUP BY
	UserID
HAVING
	COUNT(*) > 1
;

-- If duplicates are found, you may need to remove or merge the duplicates
-- The example below shows how to delete a specific UserID if it's identified as a duplicate.
DELETE FROM 
    Users 
WHERE 
    UserID IN (99999);
-- Step 3: Creating and Populating the Orders Table

-- Select the database to use
USE ecommerce_db;

/*
Orders table - 3NF applied
1. It's already in the 2NF (All the information depends on the primary key, "OrderID")
2. There are no extra dependencies between the other columns
		("TotalAmount" depends only on "OrderID" and nothing else)
*/
-- Create the Orders table to store transaction details
CREATE TABLE Orders (
	OrderID INT AUTO_INCREMENT PRIMARY KEY, -- Unique ID for each order
  UserID INT, -- ID of the user who placed the order
  OrderDate DATE NOT NULL, -- Date when the order was placed
  TotalAmount DECIMAL(10, 2) NOT NULL, -- Total amount of the order
  FOREIGN KEY (UserID) REFERENCES Users(UserID) -- Link to the Users table
);

-- Verify the structure
DESCRIBE Orders;

-- Insert sample data
INSERT INTO Orders (UserID, OrderDate, TotalAmount)
VALUES
	(1, '2024-08-01', 789.99),
	(2, '2024-08-02', 120.50)
;

-- View the data
SELECT * FROM Orders;	
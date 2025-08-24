-- Step 5: Creating and Populating the Payments Table

-- Select the database to use
USE ecommerce_db;

-- Create the Payments table to store payment transaction details
CREATE TABLE Payments (
	PaymentID INT AUTO_INCREMENT PRIMARY KEY, -- Unique ID for each payment
  OrderID INT, -- ID of the order beign paid for
  PaymentMethod VARCHAR(50), -- Payment method
  PaymentDate DATE NOT NULL, -- Date when the payment was made
  Amount DECIMAL(10, 2) NOT NULL, -- Amount paid
  FOREIGN KEY (OrderID) REFERENCES Orders(OrderID) -- Link to the orders table
);

-- Verify the structure
DESCRIBE Payments;

-- Insert sample data
INSERT INTO Payments (OrderID, PaymentMethod, PaymentDate, Amount)
VALUES
	(1, 'Credit Card', '2024-08-01', 789.99),
	(2, 'PayPal', '2024-08-02', 120.50)
;

-- Show the data
SELECT * FROM Payments;
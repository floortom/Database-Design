-- Step 4: Creating and Populating the Reviews Table

-- Select the database to use
USE ecommerce_db;

-- Create the Reviews table to store customer feedback
CREATE TABLE Reviews (
	ReviewID INT AUTO_INCREMENT PRIMARY KEY, -- Unique ID for each review
  ProductID INT, -- ID of the product being reviewed
  UserID INT, -- ID of the user who wrote the review
  Rating INT, -- Rating given by the user (1 - 5)
  ReviewText TEXT, -- Text of the review
  FOREIGN KEY (ProductID) REFERENCES Products(ProductID), -- Link to the Products table
  FOREIGN KEY (UserID) REFERENCES Users(UserID), -- Link to the Users table
  CHECK (Rating >= 1 AND Rating <= 5) -- Ensure that rating is between 1 and 5
);

-- Verify the structure
DESCRIBE Reviews;

-- Insert sample data
INSERT INTO Reviews (ProductID, UserID, Rating, ReviewText)
VALUES
	(1, 1, 5, 'Amazing smartphone, very satisfied!'),
	(2, 2, 4, 'Great shoes, very comfortable.')
;

-- View the data
SELECT * FROM Reviews; 
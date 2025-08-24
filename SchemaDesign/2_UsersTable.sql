-- Phase 2: Creating and Populating the Users Table

-- Select the database to use
USE ecommerce_db;

-- Create the Users table
CREATE TABLE Users (
	UserID INT PRIMARY KEY AUTO_INCREMENT, -- Unique ID for each user
  UserName VARCHAR(255) NOT NULL, -- User's name
  Email VARCHAR(255) NOT NULL UNIQUE,-- Unique user email
  Password VARCHAR(255) NOT NULL, -- Hashed password for security
  Address VARCHAR(255), --  User's shipping address
  DateRegistered DATE NOT NULL DEFAULT (CURDATE()) -- Register date, defaults to today
);

-- Verify the Users table's structure
DESCRIBE Users;

-- Insert sample data
INSERT INTO Users (UserName, Email, Password, Address)
VALUES
	('John Doe', 'john.doe@example.com', 'hashedpassword123', '123 Main St'),
	('Jane Smith', 'jane.smith@example.com', 'hashedpassword456', '456 Elm St')
;

-- Check the data
SELECT * FROM Users;
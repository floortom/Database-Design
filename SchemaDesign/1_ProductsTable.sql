-- Phase 1: Creating and populating the products table 

-- Select the database to use 
USE ecommerce_db;

-- Create the Products table
CREATE TABLE Products (
	ProductID INT PRIMARY KEY AUTO_INCREMENT, -- Unique ID for each product
  ProductName VARCHAR(255) NOT NULL, -- Name of the product
  Description TEXT, -- Description of the product
  Price DECIMAL(10, 2) NOT NULL, -- Price of the product
  StockQuantity INT NOT NULL, -- Quantity of the product available in stock
  Category VARCHAR(100), -- Category of the product
  DateAdded DATE NOT NULL DEFAULT (CURDATE()) -- Date when the product was added, defaults to today's date
);

-- Verify the structure of the Products table
DESCRIBE Products;

-- Insert sample data into the products table
INSERT INTO Products (ProductName, Description, Price, StockQuantity, Category)
VALUES
	('Smartphone', 'A latest model smartphone with all the features.', 699.99, 50, 'Electronics'),
	('Running Shoes', 'Comfortable running shoes for all terrains.', 89.99, 100, 'Sportswear'),
	('Bluetooth Speaker', 'Portable speaker with excellent sound quality.', 45.00, 200, 'Electronics')
;

-- View the data in the Products table
SELECT * FROM Products;
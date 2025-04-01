CREATE DATABASE BootCamp_Project1;

CREATE TABLE Customers (
CustomerID INT IDENTITY(1,1) PRIMARY KEY,
CustomerName VARCHAR(100),
Email VARCHAR(100),
Phone VARCHAR(20),
City VARCHAR(50),
Country VARCHAR(50)
);


CREATE TABLE Products (
ProductID INT IDENTITY(1,1) PRIMARY KEY,
ProductName VARCHAR(100),
Category VARCHAR(50),
Price DECIMAL(10,2),
StockQuantity INT
);

CREATE TABLE Sales (
SaleID INT IDENTITY(1,1) PRIMARY KEY,
CustomerID INT,
ProductID INT,
SaleDate DATE,
Quantity INT,
TotalAmount DECIMAL(10,2),
FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);






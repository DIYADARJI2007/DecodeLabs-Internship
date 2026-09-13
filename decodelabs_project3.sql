CREATE DATABASE DecodeLabs_Project3;
USE DecodeLabs_Project3;

CREATE TABLE sales (
    Order_ID INT PRIMARY KEY,
    Customer_Name VARCHAR(50),
    Product VARCHAR(50),
    Category VARCHAR(50),
    Quantity INT,
    Unit_Price DECIMAL(10,2),
    Region VARCHAR(30),
    Order_Date DATE
);

INSERT INTO sales VALUES
(1001,'Diya','Laptop','Electronics',2,55000,'West','2026-01-05'),
(1002,'Riya','Mouse','Accessories',5,800,'North','2026-01-10'),
(1003,'Aarav','Keyboard','Accessories',3,1500,'South','2026-01-15'),
(1004,'Meera','Laptop','Electronics',1,60000,'West','2026-02-02'),
(1005,'Karan','Monitor','Electronics',2,12000,'East','2026-02-08'),
(1006,'Neha','Mouse','Accessories',8,750,'West','2026-02-15'),
(1007,'Rahul','Keyboard','Accessories',4,1800,'North','2026-03-01'),
(1008,'Anaya','Laptop','Electronics',2,58000,'South','2026-03-12'),
(1009,'Vivaan','Monitor','Electronics',3,11000,'East','2026-03-20'),
(1010,'Ishita','Mouse','Accessories',6,850,'West','2026-03-25');

SELECT * FROM sales;
SELECT Order_ID, Customer_Name, Product, Quantity
FROM sales;
SELECT * FROM sales
WHERE Category = 'Electronics';
SELECT * FROM sales
WHERE Quantity > 3;
SELECT * FROM sales
ORDER BY Unit_Price DESC;
SELECT COUNT(*) AS Total_Orders
FROM sales;
SELECT SUM(Quantity) AS Total_Quantity_Sold
FROM sales;
SELECT AVG(Unit_Price) AS Average_Price
FROM sales;
SELECT Category, COUNT(*) AS Number_of_Orders
FROM sales
GROUP BY Category;
SELECT Category, SUM(Quantity * Unit_Price) AS Total_Sales
FROM sales
GROUP BY Category;
SELECT Region, SUM(Quantity * Unit_Price) AS Total_Sales
FROM sales
GROUP BY Region
ORDER BY Total_Sales DESC;
SELECT Category, AVG(Unit_Price) AS Average_Price
FROM sales
GROUP BY Category;
SELECT * FROM sales;
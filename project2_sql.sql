create database project2;
use project2;
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    RegistrationDate DATE
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10,2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);


CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50),
    HireDate DATE,
    Salary DECIMAL(10,2)
);


INSERT INTO Customers VALUES
(1, 'John', 'Doe', 'john.doe@email.com', '2022-03-15'),
(2, 'Jane', 'Smith', 'jane.smith@email.com', '2021-11-02');


INSERT INTO Orders VALUES
(101, 1, '2023-07-01', 150.50),
(102, 2, '2023-07-03', 200.75);


INSERT INTO Employees VALUES
(1, 'Mark', 'Johnson', 'Sales', '2020-01-15', 50000.00),
(2, 'Susan', 'Lee', 'HR', '2021-03-20', 55000.00);

SELECT o.OrderID, c.FirstName, c.LastName, o.OrderDate, o.TotalAmount
FROM Orders o
INNER JOIN Customers c
ON o.CustomerID = c.CustomerID;

SELECT c.CustomerID, c.FirstName, o.OrderID, o.TotalAmount
FROM Customers c
LEFT JOIN Orders o
ON c.CustomerID = o.CustomerID;

SELECT o.OrderID, c.FirstName, c.LastName, o.TotalAmount
FROM Customers c
RIGHT JOIN Orders o
ON c.CustomerID = o.CustomerID;

SELECT c.CustomerID, c.FirstName, o.OrderID, o.TotalAmount
FROM Customers c
OUTER JOIN Orders o
ON c.CustomerID = o.CustomerID;

SELECT DISTINCT CustomerID
FROM Orders
WHERE TotalAmount > (
    SELECT AVG(TotalAmount) FROM Orders
);

SELECT *
FROM Employees
WHERE Salary > (
    SELECT AVG(Salary) FROM Employees
);

SELECT OrderID,
       YEAR(OrderDate) AS OrderYear,
       MONTH(OrderDate) AS OrderMonth
FROM Orders;

SELECT OrderID,
       DATEDIFF(NOW(), OrderDate) AS DaysDifference
FROM Orders;

SELECT OrderID,
       FORMAT(OrderDate, 'dd-MMM-yyyy') AS FormattedDate
FROM Orders;

SELECT CustomerID,
       FirstName + ' ' + LastName AS FullName
FROM Customers;

SELECT REPLACE(FirstName, 'John', 'Jonathan') AS UpdatedName
FROM Customers;

SELECT UPPER(FirstName) AS FirstNameUpper,
       LOWER(LastName) AS LastNameLower
FROM Customers;

SELECT OrderID,
       OrderDate,
       TotalAmount,
       SUM(TotalAmount) OVER (ORDER BY OrderDate) AS RunningTotal
FROM Orders;

SELECT OrderID,
       TotalAmount,
       RANK() OVER (ORDER BY TotalAmount DESC) AS OrderRank
FROM Orders;

SELECT OrderID,
       TotalAmount,
       CASE
           WHEN TotalAmount > 1000 THEN '10% Discount'
           WHEN TotalAmount > 500 THEN '5% Discount'
           ELSE 'No Discount'
       END AS Discount
FROM Orders;

SELECT EmployeeID,
       Salary,
       CASE
           WHEN Salary >= 60000 THEN 'High'
           WHEN Salary >= 50000 THEN 'Medium'
           ELSE 'Low'
       END AS SalaryCategory
FROM Employees;


















--The marketing team is planning a loyalty campaign.

--Business Requirement

--They only want to target customers who have actually placed at least one order.

SELECT
    CustomerID,
    FirstName,
    LastName
	
FROM Sales.Customers
WHERE CustomerID IN
(
    SELECT CustomerID
    FROM Sales.Customers

    INTERSECT

    SELECT CustomerID
	
    FROM Sales.Orders
);


Select 
	CustomerID,
	COUNT (OrderID) as No_of_Orders
from sales.Orders
group by CustomerID
having COUNT(OrderID) >=1


-- if you wat no. of order id too
SELECT
    c.CustomerID,
    c.FirstName,
    c.LastName,
    COUNT(o.OrderID) AS No_Of_Orders
FROM Sales.Customers c
JOIN Sales.Orders o
    ON c.CustomerID = o.CustomerID
GROUP BY
    c.CustomerID,
    c.FirstName,
    c.LastName;
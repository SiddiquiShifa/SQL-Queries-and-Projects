--Lost Customers Analysis

--The business team wants to identify customers who registered in the system but have never placed an
--order



select CustomerID   ,
FirstName,
LastName,
Country

from Sales.Customers
where CustomerID in 
( 
 
Select 
CustomerID
from Sales.Customers
except 
select 
CustomerID
from Sales.Orders
)


SELECT CustomerID,
       FirstName,
       LastName,
       Country
FROM Sales.Customers

EXCEPT

SELECT c.CustomerID,
       c.FirstName,
       c.LastName,
       c.Country
FROM Sales.Customers c
JOIN Sales.Orders o
    ON c.CustomerID = o.CustomerID;
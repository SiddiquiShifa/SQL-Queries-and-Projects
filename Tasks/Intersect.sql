

Select CustomerID,
FirstName,
LastName,
Country,
Score
from Sales.Customers

where CustomerID in (
 select CustomerID from Sales.Orders
)

SELECT CustomerID
FROM Sales.Customers

INTERSECT

SELECT CustomerID
FROM Sales.Orders;


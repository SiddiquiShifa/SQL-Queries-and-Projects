--Find all orders that were placed in the year 2025

Select 
	OrderID,
	OrderDate,
	CustomerID

from Sales.Orders
where 
	YEAR(OrderDate) = 2025

--another
SELECT
    OrderID,
    OrderDate,
    CustomerID
FROM Sales.Orders
WHERE OrderDate >= '2025-01-01'
  AND OrderDate < '2026-01-01';


  --Find the number of days taken to ship each order.
  SELECT
    OrderID,
    OrderDate,
    CustomerID,
	 DATEDIFF(DAY, OrderDate, ShipDate) AS DeliveryDays
FROM Sales.Orders

--Find all orders that took more than 7 days to ship.
  SELECT
    OrderID,
    OrderDate,
    CustomerID,
	DATEDIFF(DAY, OrderDate, ShipDate) AS DeliveryDays
FROM Sales.Orders

where DATEDIFF(DAY, OrderDate, ShipDate) > 7

--Find the maximum delivery time taken by any order.

  SELECT
    
   max (DATEDIFF(DAY, OrderDate, ShipDate))AS DeliveryDays
FROM Sales.Orders

SELECT TOP 1
    OrderID,
    OrderDate,
    ShipDate,
    DATEDIFF(DAY, OrderDate, ShipDate) AS DeliveryDays
FROM Sales.Orders
ORDER BY DeliveryDays DESC;

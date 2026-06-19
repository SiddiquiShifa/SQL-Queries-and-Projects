--show all orders of feb month

Select * from Sales.Orders
where MONTH(OrderDate) =2

SELECT *
FROM Sales.Orders
WHERE CreationTime >= '2025-02-01'
  AND CreationTime < '2025-03-01';

  SELECT *
FROM Sales.Orders
WHERE DATENAME(MONTH, CreationTime) = 'February';
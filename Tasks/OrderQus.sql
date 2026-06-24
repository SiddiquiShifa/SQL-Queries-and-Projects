--Find all orders placed in the last 30 days.
Select 
	COUNT(OrderID) as [No of Orders]

from Sales.Orders
where OrderDate  > = DATEADD(DAY, -30, GETDATE())

--Count the number of orders placed in the last 7 days.

Select 
		COUNT(orderid)
	from sales.Orders
	where orderdate >= DATEADD(DAY,-7, GETDATE())

	Select * from Sales.Orders

	--Retrieve customers who generated more than 100 in revenue.
	Select  
	customerid,
		COUNT(OrderID) as NoOforders,
		sum  (sales) as revenue
		
	from Sales.Orders
	group by CustomerID
	having sum  (sales) > 100

	Select * from sales.Products

	--Find products that were never sold.
	select	
		COUNT(p. Product) as NeverSoldproducts
		
	
	 from sales.Products as p
	 left join Sales.Orders o
	 on p.ProductID= o.ProductID
	 where o.ProductID is null

	 --Identify customers who placed more than 2 orders in a month.
SELECT
    CustomerID,
    YEAR(OrderDate) AS OrderYear,
    MONTH(OrderDate) AS OrderMonth,
    COUNT(OrderID) AS NoOfOrders
FROM Sales.Orders
GROUP BY
    CustomerID,
    YEAR(OrderDate),
    MONTH(OrderDate)
HAVING COUNT(OrderID) > 2;
	 

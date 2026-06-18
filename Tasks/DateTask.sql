--Find the number of orders placed in each month of the year.

SELECT
    DATENAME(MONTH, CreationTime) AS MonthName,
    COUNT(OrderID) AS TotalOrders
FROM Sales.Orders
GROUP BY DATENAME(MONTH, CreationTime) ,MONTH(CreationTime)
ORDER BY MONTH(CreationTime);
        
--Identify the quarter that generated the highest total sales.

Select top 1
	DATEPART (QUARTER, CreationTime) as Quarter,
	sum (Sales) as totalsales
from Sales.Orders
group by DATEPART (QUARTER, CreationTime)
order by SUM(Sales) desc


--WITH TIES use karne 
--se agar Q2 aur Q3 dono ki sales equal highest ho, to dono return honge.
SELECT TOP 1 WITH TIES
    DATEPART(QUARTER, CreationTime) AS Quarter,
    SUM(Sales) AS TotalSales
FROM Sales.Orders
GROUP BY DATEPART(QUARTER, CreationTime)
ORDER BY TotalSales DESC;
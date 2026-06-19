--Calculation
--Dateadd(part,intervale,date)

Select 
	OrderID,
	OrderDate,
	dateadd(year, 2, orderdate) as  TwoYearsLater,
	dateadd(MONTH, 3, orderdate) as  ThreeMonthsLater,
	dateadd(DAY, -4, orderdate) as  [4daysBefore]
from Sales.Orders

--Datediff(part, satrt_date,end_date)

--Calculate age of employee

Select 

	FirstName,
	BirthDate,
	DATEDIFF(YEAR, BirthDate,GETDATE()) as Age
from Sales.Employees

--Avg shipping duration in days for each month

Select
	OrderID
	,OrderDate
	,ShipDate,
	DATENAME(MONTH, OrderDate) Monthn
	,DATEDIFF(DAY,OrderDate,ShipDate) as ShippingDuration
from Sales.Orders
order by OrderDate

--Avg Shipping days
Select
MONTH(OrderDate) as monthn
	,avg(DATEDIFF(DAY,OrderDate,ShipDate)) as AvgShippingDuration
from Sales.Orders
group by MONTH(OrderDate)	

--Time Gap Anlysis
--Number of days between eachorder n pvs order
Select
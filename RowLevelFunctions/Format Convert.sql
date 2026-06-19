--Format 

Select
	OrderID,
	CreationTime,
	FORMAT (CreationTime,'dd') dd,
	FORMAT (CreationTime,'ddd') day,
	FORMAT (CreationTime,'dddd') day,


	FORMAT (CreationTime,'mm') mm,
	FORMAT (CreationTime,'MMM') mmm,
	FORMAT (CreationTime,'MMMM') monthn

from sales.Orders


--Show creation time using following format
--day wed jan q1 2025 12:34:56 pm

Select
	OrderID,
	CreationTime,
	'Day' + FORMAT(CreationTime, ' ddd ' + ' MMM') 
	+ ' Q' +DATENAME(QUARTER, CreationTime) --as Q is string thus datename not datepart 
	+FORMAT(CreationTime, ' yyyy  hh:mm:ss  tt' )
	
	as Custom_column

 
from Sales.Orders


Select
FORMAT(OrderDate,'MMM yy') as MonthN,
count	(*) OrdersR
from sales.Orders
group by FORMAT(OrderDate,'MMM yy')

--CONVERT
Select 

Convert(int , '123') as [ String to INT],
CONVERT(date , '2025-02-14') [String to Date],
CreationTime,
CONVERT (date, CreationTime) as [DateTime to Date]


from Sales.Orders
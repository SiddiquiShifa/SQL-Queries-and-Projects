--Time Gap Analysis
--No. of dayes .between two orders current and pvs

Select 
		OrderID,
		OrderDate Current_order_date,
		LAG(OrderDate) over	(order by orderdate) Pvs_Order_Date,
		DATEDIFF(DAY,LAG(OrderDate) over(order by orderdate),OrderDate) NoOfDays
from Sales.Orders
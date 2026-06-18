/*
Find all 
orders that were shipped after the order date and 
calculate the number of days taken for delivery.*/

Select
	OrderDate,
	OrderID,
	ShipDate,
	DATEDIFF(DAY, OrderDate, ShipDate) AS DeliveryDays
	
from Sales.Orders

WHERE ShipDate > OrderDate
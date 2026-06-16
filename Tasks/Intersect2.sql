--Find customers who:

--✅ Have Score > 500

--✅ Have placed at least one order

--✅ Belong to USA


Select CustomerID,FirstName,LastName,

Score,Country from sales.Customers

where CustomerID in (
	 Select CustomerID 
	 
	 from Sales.Customers
	 where Score>500 and Country='usa'

	 intersect 
	 select CustomerID from Sales.Orders
	 )
 


--Select * from Sales.Customers
--select * from Sales.Orders
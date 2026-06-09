--using sales db to retrive all orders along with related customer ,product, and employee details
--display order id, customername, product name, sales ,price, sales person name
--use SalesDB

Select 
	o.OrderID,
	o.Sales,
	c.FirstName as CustomerName,
	p.Product,
	p.Price,
	e.FirstName as SalesPerson
	
from Sales.Orders as o
left join Sales.Customers as c
on o.CustomerID=c.customerid

left join Sales.Products as p
on o.ProductID=p.ProductID

left join Sales.Employees as e
on o.SalesPersonID=e.EmployeeID
--Set Operator
--Combine data from employee and customers into one table
--Union

Select FirstName,LastName from Sales.Customers
union
select FirstName,LastName from Sales.Employees


--union all
Select FirstName,LastName from Sales.Customers
union all --mary and kevin arent removed
select FirstName,LastName from Sales.Employees
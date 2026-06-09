--All emp who arent customers at same time 

Select FirstName,LastName from Sales.Employees
Except
select FirstName,LastName from Sales.Customers

--Intersect
--Find who are customers as well employee
Select FirstName,LastName from Sales.Employees
Intersect
select FirstName,LastName from Sales.Customers
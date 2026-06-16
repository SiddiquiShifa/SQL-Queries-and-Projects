
--The sales director wants a combined list of all people in the company ecosystem.

Select 
	'Customers' as Source_Table,
[CustomerID] as ID
      ,[FirstName]
      ,[LastName]
     
  FROM SalesDB.sales.Customers

  union all
  SELECT 
  	'Employee' as Source_Table,
  [EmployeeID]
      ,[FirstName]
      ,[LastName]
     
  FROM [SalesDB].[Sales].[Employees]

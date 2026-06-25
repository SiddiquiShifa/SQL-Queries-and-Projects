 --Isnull replaces the value 
 --isnull(value, replacementvalue)


 --coalesce(value1,value2, value3,...)
 --aacept several values

 --Find avg scores of cstomers
 select 
	customerid,
	score
	,coalesce (score,0) as Score_2
	,AVG(score) over ()AvgScores,
	AVG(coalesce (Score,0))over() avgscore2


 from Sales.customers

 /*
 Display the full name of customers 
 in a single field
 merge firstname n lastname and add 10 bonus point to each customer score
 */

 Select 
	firstname,
	LastName,
	
	coalesce (LastName , '' ) Lastname2,
	FirstName + ' ' + coalesce (LastName , '' ) as Fullname,
	Score,
	coalesce (Score, 0 )+10 as BonusPoints

 from Sales.Customers
 

 --Sort customers from lowest to highest scores,
 --withnulls appearing last

 Select 
		CustomerID,
		Score
 from sales.Customers
 order by  case when Score is null
 then 1 else 0 end , Score

 --NullIf
 --Nullif(value1, value2)
 --Twi values equal then retrins NULLL otheriwese forstwalue v1 is rerturned
 --Find sales price for each order by dividig sales by quantity
 Select 
	OrderID,
	Sales,
	Quantity,
	Sales/ nullif (quantity,0) as price
 from Sales.Orders

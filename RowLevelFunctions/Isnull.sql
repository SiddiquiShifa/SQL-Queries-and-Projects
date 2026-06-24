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
 


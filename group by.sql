/* AGGREGATING DATA 
GROUP BY 
Find the total score for each country*/

SELECT  
	country,
	SUM (score) AS total_score
from customers
GROUP BY country

--Find the total score for each country with total no. of customers 
SELECT  
	country,
	SUM (score) AS total_score,
	COUNT (id)AS total_customers
from customers
GROUP BY country
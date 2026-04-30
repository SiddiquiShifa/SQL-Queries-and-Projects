/*TOP
Retrieve only 3 customers */

Select top 3 *
from customers

/*Retrive top 3 customers with highest scores*/
Select top 3*
from customers
order by score desc

--Retrieve lowest 2 customers based on scores
SELECT top 2 *
from customers
order by score asc

--ORDERS TABLE
--Get the two most recent orders
SelEct top 2* 
FROM orders 
order by order_date desc 

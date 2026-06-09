--Left anti join
--customers who never placed any order
SELECT 
		c.id,
		c.first_name,
		o.order_id

FROM CUSTOMERS AS c
LEFT JOIN ORDERS AS o
ON c.iD=o.customer_id
where o.order_id is null

--Right anti join
--All orders without maching customers
SELECT 
		c.id,
		c.first_name,
		o.order_id

FROM CUSTOMERS AS c
right JOIN ORDERS AS o
ON c.iD=o.customer_id
where c.id is null


--Full anti join
--customer without orders and orders without customers
SELECT *

FROM CUSTOMERS AS c
full JOIN ORDERS AS o
ON c.iD=o.customer_id
where 
 c.id is null or o.customer_id is null

 --All customers along with orders but only those which have placed order 
 SELECT *

FROM CUSTOMERS AS c
left JOIN ORDERS AS o
ON c.iD=o.customer_id
where o.order_id is not null
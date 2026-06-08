--Find customers who have never placed any order. ans?
SELECT c.id,
       c.first_name,
	   o.order_id
FROM Customers c
LEFT JOIN Orders o
ON c.id = o.customer_id
WHERE o.order_id IS NULL;

--Display each customer's name, country, and total sales.

SELECT 
	C.first_name,
	C.country,
	O.sales
FROM customers AS C
LEFT JOIN orders AS O
ON C.id=O.customer_id

--Show the number of orders placed by each customer.
SELECT
    c.id,
    c.first_name,
    COUNT(o.order_id) AS total_orders
FROM Customers c
JOIN Orders o
    ON c.id = o.customer_id
GROUP BY
    c.id,
    c.first_name;	

--Find customers who have placed more than 5 orders.
Select 
	c.id,
	c.first_name,
	COUNT(o.order_id) as total_sales
	
from customers as c
left join orders as o
on id=customer_id
where order_id > 5
group by 
 c.id,
    c.first_name;	

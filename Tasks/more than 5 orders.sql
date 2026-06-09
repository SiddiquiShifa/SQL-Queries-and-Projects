--Find customers who have placed more than 5 orders.

Select 
	c.first_name,
	COUNT(o.order_id) AS total_orders

from customers as c
inner join orders as o
on id=customer_id
group by c.id,c.first_name
having count(o.order_id)>5;

SELECT
    c.id,
    c.first_name,
    COUNT(o.order_id) AS total_orders
FROM customers c
JOIN orders o
ON c.id = o.customer_id
GROUP BY c.id, c.first_name
HAVING COUNT(o.order_id) > 5;
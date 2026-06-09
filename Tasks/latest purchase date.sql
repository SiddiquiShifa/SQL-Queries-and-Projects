--Display the latest purchase date for every customer.
SELECT
	c.first_name,
	MAX (o.order_date) as Lastest_purchase

FROM customers c
JOIN orders o
ON c.id = o.customer_id
GROUP BY c.id, c.first_name

Select* from orders
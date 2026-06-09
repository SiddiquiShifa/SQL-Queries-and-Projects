--Find the average sales per customer.

SELECT
	c.first_name,
	avg(o.sales) as Avg_sales
FROM customers c
JOIN orders o
ON c.id = o.customer_id
GROUP BY c.id, c.first_name

--Show customers whose total sales exceed 10.

SELECT
	c.first_name,
	sum (o.sales) as Total_sales
FROM customers c
JOIN orders o
ON c.id = o.customer_id
GROUP BY c.id, c.first_name
HAVING SUM(o.sales) > 10;
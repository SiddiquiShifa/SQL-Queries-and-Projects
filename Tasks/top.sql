--Display the top 3 customers based on total sales.
SELECT TOP 3
    c.first_name,
    SUM(o.sales) AS total_sales
FROM customers c
JOIN orders o
ON c.id = o.customer_id
GROUP BY c.id, c.first_name
ORDER BY total_sales DESC;

Select top 3 
	c.first_name,
    o.sales
 From customers c
 JOIN orders o
ON c.id = o.customer_id

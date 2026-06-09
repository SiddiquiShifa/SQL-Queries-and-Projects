--Second highest sale
SELECT
	top 1
    c.first_name,
    o.sales
FROM customers c
JOIN orders o
ON c.id = o.customer_id
WHERE o.sales < (
    SELECT MAX(sales)
    FROM orders
)
ORDER BY o.sales DESC


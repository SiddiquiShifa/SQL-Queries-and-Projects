--Display customers who have made purchases on multiple dates.

SELECT
    c.first_name,
    COUNT(DISTINCT o.order_date) AS purchase_dates
FROM customers c
JOIN orders o
ON c.id = o.customer_id
GROUP BY c.id, c.first_name
HAVING COUNT(DISTINCT o.order_date) > 1;
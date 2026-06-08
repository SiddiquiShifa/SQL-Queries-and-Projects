--Full join
--All customers all orders even if no match

SELECT 
	order_date,
	first_name,
	sales
FROM orders
FULL JOIN customers
ON id=customer_id
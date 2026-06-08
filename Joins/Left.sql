--LEFT JOIN
--Customers with orders including those without orders
SELECT
	C.id,
	C.first_name,
	o.order_date,
	o.sales
	
FROM customers AS C
LEFT JOIN ORDERS AS O
ON ID=customer_id


--
SELECT
	C.id,
	C.first_name,
	o.order_date,
	o.sales
	
FROM ORDERS AS o
LEFT JOIN customers AS c
ON ID=customer_id
--Right join
--Customers with orders including orders without matching customers
--main table is orders
SELECT
	C.id,
	C.first_name,
	o.order_date,
	o.sales
	
FROM customers AS C
right join ORDERS AS O
ON ID=customer_id
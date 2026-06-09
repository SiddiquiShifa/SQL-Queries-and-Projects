--Find customers who have never placed any order.


SELECT
	
    c.first_name,
    o.sales
FROM customers c
LEFT JOIN orders o
ON c.id = o.customer_id
where o.order_id is null

--Display all customers along with their total sales. Customers without orders should also appea0r.
SELECT
	c.id,
    c.first_name,
    SUM(o.sales) as Total_sales
FROM customers c
LEFT JOIN orders o
ON c.id = o.customer_id
group by c.id,c.first_name


--Show customers and the number of orders they have placed, including customers with zero orders.
SELECT
	c.id,
    c.first_name,
    count (distinct o.order_id) as Total_orders
FROM customers c
LEFT JOIN orders o
ON c.id = o.customer_id
group by c.id,c.first_name

--Find customers who have not placed any orders in 2026.
SELECT
    c.id,
    c.first_name
FROM customers c
LEFT JOIN orders o
ON c.id = o.customer_id
AND YEAR(o.order_date) = 2026
WHERE o.order_id IS NULL;


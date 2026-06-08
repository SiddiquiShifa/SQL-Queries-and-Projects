/*INNER JOIN
MATCHING ROWS FROM BOTH TABLE
NOT WHOLE TABLE
DATA OF CUSTOMERS with orders but only those who did place  order
*/

SELECT * FROM customers INNER JOIN orders
ON ID= customer_id;


--selective rows from bth table
SELECT ID ,first_name,order_id,sales FROM customers INNER JOIN orders
ON ID= customer_id

--can also mention the table name before the column 
--customers.id (example)
--rather than always writing tabke names use aliases 

--selective rows from bth table
SELECT c.ID ,c.first_name,order_id,sales 
FROM customers as c
INNER JOIN orders
ON ID= customer_id
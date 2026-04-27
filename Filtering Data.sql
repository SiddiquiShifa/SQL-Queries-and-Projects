--Filter
--Retrieve  customers with a score not equal to 0
Select*
From customers
where score !=0

--Customers from germany
select 
first_name,
country
from customers
where country = 'Germany'

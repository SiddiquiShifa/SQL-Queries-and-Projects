--String Extraction

--Retrieve first two caracters of each firstname

select 
first_name,
LEFT(TRIM(first_name),2) as first_two
from customers

--last two charcter

select 
first_name,
right (first_name,2) as last_two
from customers

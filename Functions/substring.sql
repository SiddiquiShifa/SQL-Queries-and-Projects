--Substring

Select
	first_name,
	SUBSTRING(TRIM(first_name),2,4) as sub_name
from customers

Select
	first_name,
	SUBSTRING(TRIM(first_name),2,LEN(first_name)) as sub_name
from customers
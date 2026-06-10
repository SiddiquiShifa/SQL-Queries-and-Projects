--Functions
--String functions     MANIPULATION

--Concat

--Show firstname togetehr with their country in one column 
Select 
first_name,
country,
concat(first_name, '-', country) as name_coutry
from customers

--Upper & lower
--Transforms the first name to lower case
Select 
first_name,
country,
concat(first_name, '-', country) as name_coutry,
lower (first_name) as LowerCase
from customers

--Upper
Select 
first_name,
country,
concat(first_name, '-', country) as name_coutry,
Upper (first_name) as UpperCase
from customers
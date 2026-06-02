--Insert data from 'customers' to 'persons' table
Select* from persons


insert into persons
Select id,
first_name,
Null,
'Unknown'
from customers

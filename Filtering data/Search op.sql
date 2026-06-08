--Search operator
--pattern in text
--find all customers first name strts with M
Select * from customers
where first_name like 'm%'

--customer name w=ends with m
Select * from customers
where first_name like '%n'

--fistname contains r
Select * from customers
where first_name like '%r%'

-- r in third postion
Select * from customers
where first_name like '__r%'
--Update
--Change the customer score with id 6 to 0
Select * from customers

/*update customers(single value)
set score=0
where id=6*/



--Same values in different ids set use IN
UPDATE customers
SET score = 0
WHERE id IN (5, 6);


--Change the customer score with id 8 to 0 & update the country to UK
update customers
set score=0,
	country='UK'
where id=8

update customers
set country='France'
where id in (7,10);


update customers
set score =0
where score is null

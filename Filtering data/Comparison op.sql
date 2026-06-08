/*Opertaors
Comparison Operator
Retrieve all customers fro germany*/

Select * from customers
Where country= 'germany'

--Retrieve all customers who arent from germany
Select * from customers
where country!='germany'
/*you can also write like this*/
--where country <> 'germany'

--Retrieve all customers where score gretater than 5000

Select * from customers
Where score> 500
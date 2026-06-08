--Logical operators
--Retrieve all customers who are from usa and have greater scor ethan 500
Select * from customers
Where country= 'usa' and score> 500

--OR operator
--Customers who are either fro germany  or score >600
Select * from customers
Where country= 'germany' or score> 600

--Retrive  customers score NOT less than 500
Select * from customers
Where not score < 500
--Range operator

--customers whose score falls between range 100 and 500
Select* from customers
where score between 100 and 500
--ALso 
Select* from customers
where score >= 100 and score <= 500
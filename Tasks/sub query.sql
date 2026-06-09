--Find customers whose score is higher than the average score.

Select first_name,
		score
from customers
where score > (
select AVG(score)
from	customers
)

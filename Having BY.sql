--Having by
/* Find the avg score  for each country considering 
only customers with a score not equal to 0
& return only those countries with an avg score greater than 430 */

SELECT

	country,
	avg (score) as avg_score
from customers
where score!=0
group by country
having avg (score) >430
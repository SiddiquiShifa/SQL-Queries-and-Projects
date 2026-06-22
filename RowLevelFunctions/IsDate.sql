--IsDate
Select
ISDATE('2025-08-14') Checkdate1,
ISDATE('2025-14') Checkdate2,
ISDATE('2025') Checkdate3

--UseCase
Select
Orderdate,
ISDATE(Orderdate),
case when ISDATE(Orderdate) =1 then CAST(Orderdate as date)
end newOrderdate
from

(
Select('2025-08-14') as Orderdate Union
Select('2025-14') union
Select ('2021-09-04')union 
Select ('2025 -09-13') union
select ('2028')
) t
--where isdate(orderdate)= 0
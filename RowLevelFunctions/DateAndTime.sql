
--DATE AND TIME FUNCTIONS
SELECT
	OrderID,
	CreationTime,
	'2026-02-01' Hardcoded,
	GETDATE() TODAY
FROM SALES.Orders

----PART EXTRACTION 
SELECT 
	OrderID,
	CreationTime,
	YEAR(CreationTime) YEAR,
	MONTH(CreationTime) MONTH,
	DAY(CreationTime) DAY
FROM Sales.Orders

--DATEPART
----PART EXTRACTION 
SELECT 
	OrderID,
	CreationTime,
	DATEPART(YEAR,CreationTime) Year_dp,
	DATEPART(MONTH,CreationTime) Month_dp,
	DATEPART(DAY,CreationTime)  day_dp,
	DATEPART(HOUR,CreationTime) Hour_dp,
	DATEPART(QUARTER,CreationTime)quarter_dp,
	DATEPART(WEEK,CreationTime) week_dp,
	DAY(CreationTime) DAY
FROM Sales.Orders

---DATE NAMEEE_______type:string
select 
CreationTime,
	DATENAME(WEEKDAY,CreationTime) weekname,
	DATENAME(mm,CreationTime) month_name,
	DATENAME(DAY,CreationTime) day_n --type would be string as Datename is used even if it appears as int 
from Sales.Orders

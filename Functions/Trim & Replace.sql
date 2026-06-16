--tRIM
--FIND CUSTOMERS WHO AVE LEADING OR TRAILING SPACE 

SELECT
	first_name
FROM Customers
WHERE first_name != TRIM(first_name)

SELECT
	first_name,
	LEN(first_name) AS Len_name,
	LEN(TRIM(first_name)) as trim_len_name,
	len (first_name) - LEN(TRIM(first_name)) flag
FROM customers


--Replace
--Replace - with nospace
Select '123-456-789' as phone,
Replace ('123-456-789', '-','') as cleanPhone

select 
'report.txt' as oldfile,

Replace ('report.txt','.txt','.csv')as newFile
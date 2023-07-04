/*
CHALLENGE 2
More targeted questions that query tables containing data about customers and employees
	1. Get a list of customers who made purchases between 2011 and 2012.
	2. Get a list of customers, sales reps, and total transaction amounts for each customer 
		between 2011 and 2012.
	3. How many transactions are above the average transaction amount during the same 
		time period?
	4. What is the average transaction amount for each year that WSDA Music has been 
		in business?
*/

-- 1 

SELECT
	c.FirstName,
	c.LastName,
	i.total
	
FROM
	Invoice i
INNER JOIN
	Customer c
on
	i.CustomerId = c.CustomerId
WHERE
	InvoiceDate >= '2011-01-01' AND InvoiceDate <= '2012-12-31'
ORDER by
	i.total DESC

-- 2.
SELECT
	c.FirstName as [Customer FirstName],
	c.LastName as [Customer LastName],
	e.FirstName as [Employee FirstName],
	e.LastName as [Employee LastName],
	i.total
FROM
	Invoice i
INNER JOIN
	Customer c
on 
	i.CustomerId = c.CustomerId
INNER JOIN
	Employee e
on 
	e.EmployeeId = c.SupportRepId
WHERE
	InvoiceDate >= '2011-01-01' AND InvoiceDate <= '2012-12-31'
ORDER by
	i.total DESC
	
-- 3.
SELECT
	count(total) as [Number of TRANSACTION above average]
FROM
	Invoice
WHERE
	total > 
(SELECT
	round(avg(total),2) as [Avg TRANSACTION]
FROM
	Invoice
WHERE
	InvoiceDate >= '2011-01-01' AND InvoiceDate <= '2012-12-31')
	AND 
	InvoiceDate >= '2011-01-01' AND InvoiceDate <= '2012-12-31'
	
	
-- 4.
SELECT 
	round(avg(total),2) as [Average TRANSACTION],
	strftime('%Y',invoiceDate) as [Year]
FROM
	Invoice
GROUP by
	strftime('%Y',invoiceDate)
	

	

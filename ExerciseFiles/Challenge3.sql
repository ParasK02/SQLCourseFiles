/*CHALLENGE 3
Queries that perform in-depth analysis with the aim of finding employees who may have been 
financially motivated to commit a crime
	1. Get a list of employees who exceeded the average transaction amount from sales they 
		generated during 2011 and 2012.
	2. Create a Commission Payout column that displays each employee’s commission 
		based on 15% of the sales transaction amount.
	3. Which employee made the highest commission?
	4. List the customers that the employee identified in the last question.
	5. Which customer made the highest purchase?
	6. Look at this customer record—do you see anything suspicious?
	7. Who do you conclude is our primary person of interest?
*/

-- 1.
SELECT
	e.FirstName,
	e.LastName,
	sum(i.total) as [total sales]
	
FROM
	Invoice as i 
INNER JOIN
	Customer as c
on i.CustomerId = c.CustomerId
INNER JOIN
	Employee as e
on c.SupportRepId = e.EmployeeId
WHERE
	InvoiceDate >= '2011-01-01' AND InvoiceDate <= '2012-12-31' 
	AND i.total> 11.66
GROUP by
	e.FirstName,
	e.LastName
ORDER by e.LastName

-- 2.
SELECT
	e.FirstName,
	e.LastName,
	sum(i.total) as [total sales],
	round(sum(i.total) * 0.15,2) as [commission]
	
FROM
	Invoice as i 
INNER JOIN
	Customer as c
on i.CustomerId = c.CustomerId
INNER JOIN
	Employee as e
on c.SupportRepId = e.EmployeeId
WHERE
	InvoiceDate >= '2011-01-01' AND InvoiceDate <= '2012-12-31' 
	
GROUP by
	e.FirstName,
	e.LastName
ORDER by e.LastName

-- 3. Jane Peacock has the highest commision with $199.77

-- 4. 
SELECT
	c.FirstName as [Customer FirstName],
	c.LastName as [Customer LastName],
	e.FirstName as [Employee FirstName],
	e.LastName as [Employee LastName],
	sum(i.total) as [total sales],
	round(sum(i.total) * 0.15,2) as [commission]
FROM
	Invoice	i
INNER JOIN
	Customer c
on i.CustomerId = c.CustomerId
INNER JOIN
	Employee e
on c.SupportRepId = e.EmployeeId
WHERE
	InvoiceDate >= '2011-01-01' AND InvoiceDate <= '2012-12-31' 
	AND e.LastName = 'Peacock'
GROUP by
	c.FirstName,
	c.LastName,
	e.FirstName,
	e.LastName
ORDER by [total sales] DESC

-- 5. John Doeein made the highest purchase with $1000.86 

-- 6.

SELECT
	*
FROM
	Customer c
WHERE
	c.LastName = 'Doeein'

--7. Jane Peacock
	

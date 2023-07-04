-- Description: Using JOIN command to join two tables; Invoice and Customer
 
SELECT
	c.LastName,
	c.FirstName,
	i.InvoiceId,
	i.CustomerId,
	i.InvoiceDate,
	i.total
FROM
	Invoice as i
INNER JOIN
	Customer as c
ON
	i.CustomerId = c.CustomerId
ORDER by
	c.CustomerId

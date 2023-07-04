-- subqueries: gather data about all invoices that are less than this average 
SELECT
	round(avg(total),2) as [Total Average]
FROM
	Invoice

  
SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity,
	total
FROM
	Invoice
WHERE
	total < (SELECT avg(total)FROM Invoice)
ORDER by
	total DESC

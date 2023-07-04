--returning multiple values from a subquery
SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity
FROM
	Invoice
WHERE
	InvoiceDate in 

(SELECT
	InvoiceDate
FROM
	Invoice
WHERE
	InvoiceId in(251,252,254))


/*
CREATED BY: PARAS KUMAR
CREATED DATE: 07/04/2023
DESCRIPTION: This QUERY displays all customers who purchased two songs at $0.99 each
*/

SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity,
	total
FROM
	Invoice
WHERE
	total = 1.98
ORDER BY
	InvoiceDate

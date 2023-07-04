--subqueries in the select: how is each city performing against the global average sales?

SELECT
	BillingCity,
	avg(total) as[city average],
	(SELECT avg(total)from invoice) as[global average]
FROM
	Invoice
GROUP by 
	BillingCity
ORDER by
	BillingCity
	

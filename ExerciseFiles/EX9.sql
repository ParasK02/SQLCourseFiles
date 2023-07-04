--Description: Grouping: What are the average Invoice totals

SELECT
	BillingCountry,
	BillingCity,
	round(avg(total),2) as [Average Invoice]
FROM
	Invoice
GROUP BY
	BillingCountry, BillingCity
ORDER by
	BillingCountry

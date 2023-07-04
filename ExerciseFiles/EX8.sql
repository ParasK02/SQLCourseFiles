--aggregate function: what are total global sales

SELECT
	sum(total) as [total sales],
	round(avg(total),2) as [average sales],
	max(total) as [max sale],
	min(total) as [min sale],
	count(*) as [sales count]
FROM
	Invoice

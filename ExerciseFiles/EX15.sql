-- description: Create a view

CREATE VIEW V_AvgTotal as 
SELECT
	round(avg(total),2) as [average total]
FROM
	Invoice
